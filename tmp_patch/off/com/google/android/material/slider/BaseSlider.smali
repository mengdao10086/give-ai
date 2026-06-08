.class abstract Lcom/google/android/material/slider/BaseSlider;
.super Landroid/view/View;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;,
        Lcom/google/android/material/slider/BaseSlider$SliderState;,
        Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/slider/BaseSlider<",
        "TS;T",
        "L;",
        "TT;>;",
        "L::Lcom/google/android/material/slider/BaseOnChangeListener<",
        "TS;>;T::",
        "Lcom/google/android/material/slider/BaseOnSliderTouchListener<",
        "TS;>;>",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LABEL_ANIMATION_ENTER_DURATION:I = 0x53

.field private static final DEFAULT_LABEL_ANIMATION_EXIT_DURATION:I = 0x75

.field static final DEF_STYLE_RES:I

.field private static final EXCEPTION_ILLEGAL_DISCRETE_VALUE:Ljava/lang/String; = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

.field private static final EXCEPTION_ILLEGAL_MIN_SEPARATION:Ljava/lang/String; = "minSeparation(%s) must be greater or equal to 0"

.field private static final EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE:Ljava/lang/String; = "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)"

.field private static final EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE_UNIT:Ljava/lang/String; = "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)"

.field private static final EXCEPTION_ILLEGAL_STEP_SIZE:Ljava/lang/String; = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

.field private static final EXCEPTION_ILLEGAL_VALUE:Ljava/lang/String; = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

.field private static final EXCEPTION_ILLEGAL_VALUE_FROM:Ljava/lang/String; = "valueFrom(%s) must be smaller than valueTo(%s)"

.field private static final EXCEPTION_ILLEGAL_VALUE_TO:Ljava/lang/String; = "valueTo(%s) must be greater than valueFrom(%s)"

.field private static final HALO_ALPHA:I = 0x3f

.field private static final LABEL_ANIMATION_ENTER_DURATION_ATTR:I

.field private static final LABEL_ANIMATION_ENTER_EASING_ATTR:I

.field private static final LABEL_ANIMATION_EXIT_DURATION_ATTR:I

.field private static final LABEL_ANIMATION_EXIT_EASING_ATTR:I

.field private static final MIN_TOUCH_TARGET_DP:I = 0x30

.field private static final TAG:Ljava/lang/String; = "BaseSlider"

.field private static final THRESHOLD:D = 1.0E-4

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8

.field static final UNIT_PX:I = 0x0

.field static final UNIT_VALUE:I = 0x1

.field private static final WARNING_FLOATING_POINT_ERROR:Ljava/lang/String; = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."


# instance fields
.field private accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider<",
            "TS;T",
            "L;",
            "TT;>.AccessibilityEventSender;"
        }
    .end annotation
.end field

.field private final accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private activeThumbIdx:I

.field private final activeTicksPaint:Landroid/graphics/Paint;

.field private final activeTrackPaint:Landroid/graphics/Paint;

.field private final changeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private customThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private customThumbDrawablesForValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private defaultThumbRadius:I

.field private defaultTrackHeight:I

.field private dirtyConfig:Z

.field private focusedThumbIdx:I

.field private forceDrawCompatHalo:Z

.field private formatter:Lcom/google/android/material/slider/LabelFormatter;

.field private haloColor:Landroid/content/res/ColorStateList;

.field private final haloPaint:Landroid/graphics/Paint;

.field private haloRadius:I

.field private final inactiveTicksPaint:Landroid/graphics/Paint;

.field private final inactiveTrackPaint:Landroid/graphics/Paint;

.field private isLongPress:Z

.field private labelBehavior:I

.field private labelPadding:I

.field private labelStyle:I

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/tooltip/TooltipDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private labelsAreAnimatedIn:Z

.field private labelsInAnimator:Landroid/animation/ValueAnimator;

.field private labelsOutAnimator:Landroid/animation/ValueAnimator;

.field private lastEvent:Landroid/view/MotionEvent;

.field private minTouchTargetSize:I

.field private minTrackSidePadding:I

.field private minWidgetHeight:I

.field private final scaledTouchSlop:I

.field private separationUnit:I

.field private stepSize:F

.field private thumbIsPressed:Z

.field private final thumbPaint:Landroid/graphics/Paint;

.field private thumbRadius:I

.field private tickColorActive:Landroid/content/res/ColorStateList;

.field private tickColorInactive:Landroid/content/res/ColorStateList;

.field private tickVisible:Z

.field private ticksCoordinates:[F

.field private touchDownX:F

.field private final touchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private touchPosition:F

.field private trackColorActive:Landroid/content/res/ColorStateList;

.field private trackColorInactive:Landroid/content/res/ColorStateList;

.field private trackHeight:I

.field private trackSidePadding:I

.field private trackWidth:I

.field private valueFrom:F

.field private valueTo:F

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private widgetHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 233
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    #@2
    sput v0, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    #@4
    .line 239
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    #@6
    sput v0, Lcom/google/android/material/slider/BaseSlider;->LABEL_ANIMATION_ENTER_DURATION_ATTR:I

    #@8
    .line 240
    sget v0, Lcom/google/android/material/R$attr;->motionDurationShort3:I

    #@a
    sput v0, Lcom/google/android/material/slider/BaseSlider;->LABEL_ANIMATION_EXIT_DURATION_ATTR:I

    #@c
    .line 241
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@e
    sput v0, Lcom/google/android/material/slider/BaseSlider;->LABEL_ANIMATION_ENTER_EASING_ATTR:I

    #@10
    .line 243
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedAccelerateInterpolator:I

    #@12
    sput v0, Lcom/google/android/material/slider/BaseSlider;->LABEL_ANIMATION_EXIT_EASING_ATTR:I

    #@14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 342
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 346
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    #@0
    .line 351
    sget v0, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 259
    new-instance p1, Ljava/util/ArrayList;

    #@b
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@10
    .line 260
    new-instance p1, Ljava/util/ArrayList;

    #@12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    #@17
    .line 261
    new-instance p1, Ljava/util/ArrayList;

    #@19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@1c
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    #@1e
    const/4 p1, 0x0

    #@1f
    .line 264
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    #@21
    .line 288
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    #@23
    .line 293
    new-instance v0, Ljava/util/ArrayList;

    #@25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@28
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@2a
    const/4 v0, -0x1

    #@2b
    .line 295
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@2d
    .line 297
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@2f
    const/4 v0, 0x0

    #@30
    .line 298
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@32
    const/4 v0, 0x1

    #@33
    .line 300
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    #@35
    .line 303
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    #@37
    .line 312
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@39
    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@3c
    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@3e
    .line 314
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@41
    move-result-object v2

    #@42
    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    #@44
    .line 317
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    #@46
    .line 353
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@49
    move-result-object p1

    #@4a
    .line 355
    new-instance v2, Landroid/graphics/Paint;

    #@4c
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@4f
    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    #@51
    .line 356
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@53
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@56
    .line 357
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@58
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@5b
    .line 359
    new-instance v2, Landroid/graphics/Paint;

    #@5d
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@60
    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    #@62
    .line 360
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@64
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@67
    .line 361
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@69
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@6c
    .line 363
    new-instance v2, Landroid/graphics/Paint;

    #@6e
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    #@71
    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    #@73
    .line 364
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@75
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@78
    .line 365
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    #@7a
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@7c
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@7f
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@82
    .line 367
    new-instance v2, Landroid/graphics/Paint;

    #@84
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    #@87
    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    #@89
    .line 368
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@8b
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@8e
    .line 370
    new-instance v2, Landroid/graphics/Paint;

    #@90
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@93
    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    #@95
    .line 371
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@97
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@9a
    .line 372
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@9c
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@9f
    .line 374
    new-instance v2, Landroid/graphics/Paint;

    #@a1
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@a4
    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    #@a6
    .line 375
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@a8
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@ab
    .line 376
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@ad
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@b0
    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b3
    move-result-object v2

    #@b4
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->loadResources(Landroid/content/res/Resources;)V

    #@b7
    .line 379
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@ba
    .line 381
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setFocusable(Z)V

    #@bd
    .line 382
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setClickable(Z)V

    #@c0
    const/4 p2, 0x2

    #@c1
    .line 385
    invoke-virtual {v1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    #@c4
    .line 388
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@c7
    move-result-object p1

    #@c8
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@cb
    move-result p1

    #@cc
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    #@ce
    .line 390
    new-instance p1, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    #@d0
    invoke-direct {p1, p0}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    #@d3
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    #@d5
    .line 391
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@d8
    .line 394
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@db
    move-result-object p1

    #@dc
    const-string p2, "accessibility"

    #@de
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e1
    move-result-object p1

    #@e2
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    #@e4
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@e6
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/slider/BaseSlider;)Ljava/util/List;
    .registers 1

    #@0
    .line 198
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/slider/BaseSlider;)Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
    .registers 1

    #@0
    .line 198
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    #@2
    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;
    .registers 2

    #@0
    .line 198
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/slider/BaseSlider;IF)Z
    .registers 3

    #@0
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$600(Lcom/google/android/material/slider/BaseSlider;)V
    .registers 1

    #@0
    .line 198
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    #@3
    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/slider/BaseSlider;I)F
    .registers 2

    #@0
    .line 198
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    #@0
    .line 896
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@2
    mul-int/lit8 v0, v0, 0x2

    #@4
    .line 897
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result v1

    #@8
    .line 898
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@b
    move-result v2

    #@c
    const/4 v3, 0x0

    #@d
    const/4 v4, -0x1

    #@e
    if-ne v1, v4, :cond_16

    #@10
    if-ne v2, v4, :cond_16

    #@12
    .line 900
    invoke-virtual {p1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@15
    goto :goto_26

    #@16
    :cond_16
    int-to-float v0, v0

    #@17
    .line 902
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result v4

    #@1b
    int-to-float v4, v4

    #@1c
    div-float/2addr v0, v4

    #@1d
    int-to-float v1, v1

    #@1e
    mul-float/2addr v1, v0

    #@1f
    float-to-int v1, v1

    #@20
    int-to-float v2, v2

    #@21
    mul-float/2addr v2, v0

    #@22
    float-to-int v0, v2

    #@23
    .line 903
    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@26
    :goto_26
    return-void
.end method

.method private attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V
    .registers 3

    #@0
    .line 1611
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setRelativeToView(Landroid/view/View;)V

    #@7
    return-void
.end method

.method private calculateIncrementForKey(I)Ljava/lang/Float;
    .registers 4

    #@0
    .line 2490
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    #@2
    if-eqz v0, :cond_b

    #@4
    const/16 v0, 0x14

    #@6
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F

    #@9
    move-result v0

    #@a
    goto :goto_f

    #@b
    :cond_b
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement()F

    #@e
    move-result v0

    #@f
    :goto_f
    const/16 v1, 0x15

    #@11
    if-eq p1, v1, :cond_3c

    #@13
    const/16 v1, 0x16

    #@15
    if-eq p1, v1, :cond_30

    #@17
    const/16 v1, 0x45

    #@19
    if-eq p1, v1, :cond_2a

    #@1b
    const/16 v1, 0x46

    #@1d
    if-eq p1, v1, :cond_25

    #@1f
    const/16 v1, 0x51

    #@21
    if-eq p1, v1, :cond_25

    #@23
    const/4 p1, 0x0

    #@24
    return-object p1

    #@25
    .line 2501
    :cond_25
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@28
    move-result-object p1

    #@29
    return-object p1

    #@2a
    :cond_2a
    neg-float p1, v0

    #@2b
    .line 2497
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2e
    move-result-object p1

    #@2f
    return-object p1

    #@30
    .line 2495
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    #@33
    move-result p1

    #@34
    if-eqz p1, :cond_37

    #@36
    neg-float v0, v0

    #@37
    :cond_37
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3a
    move-result-object p1

    #@3b
    return-object p1

    #@3c
    .line 2493
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    #@3f
    move-result p1

    #@40
    if-eqz p1, :cond_43

    #@42
    goto :goto_44

    #@43
    :cond_43
    neg-float v0, v0

    #@44
    :goto_44
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@47
    move-result-object p1

    #@48
    return-object p1
.end method

.method private calculateStepIncrement()F
    .registers 3

    #@0
    .line 2509
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v1, v0, v1

    #@5
    if-nez v1, :cond_9

    #@7
    const/high16 v0, 0x3f800000    # 1.0f

    #@9
    :cond_9
    return v0
.end method

.method private calculateStepIncrement(I)F
    .registers 5

    #@0
    .line 2517
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement()F

    #@3
    move-result v0

    #@4
    .line 2518
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@6
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@8
    sub-float/2addr v1, v2

    #@9
    div-float/2addr v1, v0

    #@a
    int-to-float p1, p1

    #@b
    cmpg-float v2, v1, p1

    #@d
    if-gtz v2, :cond_10

    #@f
    return v0

    #@10
    :cond_10
    div-float/2addr v1, p1

    #@11
    .line 2523
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@14
    move-result p1

    #@15
    int-to-float p1, p1

    #@16
    mul-float/2addr p1, v0

    #@17
    return p1
.end method

.method private calculateTrackCenter()I
    .registers 5

    #@0
    .line 1697
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    #@2
    div-int/lit8 v0, v0, 0x2

    #@4
    .line 1698
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    #@6
    const/4 v2, 0x1

    #@7
    const/4 v3, 0x0

    #@8
    if-eq v1, v2, :cond_10

    #@a
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldAlwaysShowLabel()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1c

    #@10
    .line 1699
    :cond_10
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@12
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@18
    invoke-virtual {v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    #@1b
    move-result v3

    #@1c
    :cond_1c
    add-int/2addr v0, v3

    #@1d
    return v0
.end method

.method private createLabelAnimator(Z)Landroid/animation/ValueAnimator;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    if-eqz p1, :cond_7

    #@5
    move v2, v0

    #@6
    goto :goto_8

    #@7
    :cond_7
    move v2, v1

    #@8
    :goto_8
    if-eqz p1, :cond_d

    #@a
    .line 2129
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    #@c
    goto :goto_f

    #@d
    :cond_d
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    #@f
    .line 2128
    :goto_f
    invoke-static {v3, v2}, Lcom/google/android/material/slider/BaseSlider;->getAnimatorCurrentValueOrDefault(Landroid/animation/ValueAnimator;F)F

    #@12
    move-result v2

    #@13
    if-eqz p1, :cond_16

    #@15
    move v0, v1

    #@16
    :cond_16
    const/4 v1, 0x2

    #@17
    new-array v1, v1, [F

    #@19
    const/4 v3, 0x0

    #@1a
    aput v2, v1, v3

    #@1c
    const/4 v2, 0x1

    #@1d
    aput v0, v1, v2

    #@1f
    .line 2131
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@22
    move-result-object v0

    #@23
    if-eqz p1, :cond_3e

    #@25
    .line 2137
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@28
    move-result-object p1

    #@29
    sget v1, Lcom/google/android/material/slider/BaseSlider;->LABEL_ANIMATION_ENTER_DURATION_ATTR:I

    #@2b
    const/16 v2, 0x53

    #@2d
    .line 2136
    invoke-static {p1, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@30
    move-result p1

    #@31
    .line 2142
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@34
    move-result-object v1

    #@35
    sget v2, Lcom/google/android/material/slider/BaseSlider;->LABEL_ANIMATION_ENTER_EASING_ATTR:I

    #@37
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@39
    .line 2141
    invoke-static {v1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@3c
    move-result-object v1

    #@3d
    goto :goto_56

    #@3e
    .line 2148
    :cond_3e
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@41
    move-result-object p1

    #@42
    sget v1, Lcom/google/android/material/slider/BaseSlider;->LABEL_ANIMATION_EXIT_DURATION_ATTR:I

    #@44
    const/16 v2, 0x75

    #@46
    .line 2147
    invoke-static {p1, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@49
    move-result p1

    #@4a
    .line 2153
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@4d
    move-result-object v1

    #@4e
    sget v2, Lcom/google/android/material/slider/BaseSlider;->LABEL_ANIMATION_EXIT_EASING_ATTR:I

    #@50
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@52
    .line 2152
    invoke-static {v1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@55
    move-result-object v1

    #@56
    :goto_56
    int-to-long v2, p1

    #@57
    .line 2157
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@5a
    .line 2158
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@5d
    .line 2159
    new-instance p1, Lcom/google/android/material/slider/BaseSlider$1;

    #@5f
    invoke-direct {p1, p0}, Lcom/google/android/material/slider/BaseSlider$1;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    #@62
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@65
    return-object v0
.end method

.method private createLabelPool()V
    .registers 5

    #@0
    .line 746
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    if-le v0, v1, :cond_3d

    #@e
    .line 747
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@10
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v1

    #@16
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@18
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1b
    move-result v2

    #@1c
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@1f
    move-result-object v0

    #@20
    .line 748
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_3a

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@30
    .line 749
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_24

    #@36
    .line 750
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    #@39
    goto :goto_24

    #@3a
    .line 753
    :cond_3a
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@3d
    .line 757
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@42
    move-result v0

    #@43
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v1

    #@49
    const/4 v2, 0x0

    #@4a
    if-ge v0, v1, :cond_66

    #@4c
    .line 761
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@4f
    move-result-object v0

    #@50
    const/4 v1, 0x0

    #@51
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelStyle:I

    #@53
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    #@56
    move-result-object v0

    #@57
    .line 762
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@59
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5c
    .line 763
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_3d

    #@62
    .line 764
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    #@65
    goto :goto_3d

    #@66
    .line 769
    :cond_66
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@68
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@6b
    move-result v0

    #@6c
    const/4 v1, 0x1

    #@6d
    if-ne v0, v1, :cond_70

    #@6f
    goto :goto_71

    #@70
    :cond_70
    move v2, v1

    #@71
    .line 770
    :goto_71
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@76
    move-result-object v0

    #@77
    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_88

    #@7d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v1

    #@81
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@83
    int-to-float v3, v2

    #@84
    .line 771
    invoke-virtual {v1, v3}, Lcom/google/android/material/tooltip/TooltipDrawable;->setStrokeWidth(F)V

    #@87
    goto :goto_77

    #@88
    :cond_88
    return-void
.end method

.method private detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V
    .registers 3

    #@0
    .line 1629
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 1631
    invoke-interface {v0, p1}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 1632
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->detachView(Landroid/view/View;)V

    #@10
    :cond_10
    return-void
.end method

.method private dimenToValue(F)F
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v1, p1, v0

    #@3
    if-nez v1, :cond_6

    #@5
    return v0

    #@6
    .line 2072
    :cond_6
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@8
    int-to-float v0, v0

    #@9
    sub-float/2addr p1, v0

    #@a
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@c
    int-to-float v0, v0

    #@d
    div-float/2addr p1, v0

    #@e
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@10
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@12
    sub-float v1, v0, v1

    #@14
    mul-float/2addr p1, v1

    #@15
    add-float/2addr p1, v0

    #@16
    return p1
.end method

.method private dispatchOnChangedFromUser(I)V
    .registers 6

    #@0
    .line 2298
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_23

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/google/android/material/slider/BaseOnChangeListener;

    #@12
    .line 2299
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/lang/Float;

    #@1a
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@1d
    move-result v2

    #@1e
    const/4 v3, 0x1

    #@1f
    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    #@22
    goto :goto_6

    #@23
    .line 2301
    :cond_23
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@25
    if-eqz v0, :cond_30

    #@27
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_30

    #@2d
    .line 2302
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->scheduleAccessibilityEventSender(I)V

    #@30
    :cond_30
    return-void
.end method

.method private dispatchOnChangedProgrammatically()V
    .registers 6

    #@0
    .line 2289
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_2d

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/google/android/material/slider/BaseOnChangeListener;

    #@12
    .line 2290
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v2

    #@18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_6

    #@1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/lang/Float;

    #@24
    .line 2291
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    #@27
    move-result v3

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v1, p0, v3, v4}, Lcom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    #@2c
    goto :goto_18

    #@2d
    :cond_2d
    return-void
.end method

.method private drawActiveTrack(Landroid/graphics/Canvas;II)V
    .registers 14

    #@0
    .line 1778
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    #@3
    move-result-object v0

    #@4
    .line 1779
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@6
    int-to-float v2, v1

    #@7
    const/4 v3, 0x1

    #@8
    aget v3, v0, v3

    #@a
    int-to-float p2, p2

    #@b
    mul-float/2addr v3, p2

    #@c
    add-float v7, v2, v3

    #@e
    int-to-float v1, v1

    #@f
    const/4 v2, 0x0

    #@10
    .line 1780
    aget v0, v0, v2

    #@12
    mul-float/2addr v0, p2

    #@13
    add-float v5, v1, v0

    #@15
    int-to-float v8, p3

    #@16
    .line 1781
    iget-object v9, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    #@18
    move-object v4, p1

    #@19
    move v6, v8

    #@1a
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@1d
    return-void
.end method

.method private drawInactiveTrack(Landroid/graphics/Canvas;II)V
    .registers 15

    #@0
    .line 1752
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    #@3
    move-result-object v0

    #@4
    .line 1753
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@6
    int-to-float v2, v1

    #@7
    const/4 v3, 0x1

    #@8
    aget v3, v0, v3

    #@a
    int-to-float v4, p2

    #@b
    mul-float/2addr v3, v4

    #@c
    add-float v6, v2, v3

    #@e
    add-int v2, v1, p2

    #@10
    int-to-float v2, v2

    #@11
    cmpg-float v2, v6, v2

    #@13
    if-gez v2, :cond_1f

    #@15
    int-to-float v9, p3

    #@16
    add-int/2addr v1, p2

    #@17
    int-to-float v8, v1

    #@18
    .line 1755
    iget-object v10, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    #@1a
    move-object v5, p1

    #@1b
    move v7, v9

    #@1c
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@1f
    .line 1759
    :cond_1f
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@21
    int-to-float v1, p2

    #@22
    const/4 v2, 0x0

    #@23
    aget v0, v0, v2

    #@25
    mul-float/2addr v0, v4

    #@26
    add-float v5, v1, v0

    #@28
    int-to-float v0, p2

    #@29
    cmpl-float v0, v5, v0

    #@2b
    if-lez v0, :cond_36

    #@2d
    int-to-float v3, p2

    #@2e
    int-to-float v6, p3

    #@2f
    .line 1761
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    #@31
    move-object v2, p1

    #@32
    move v4, v6

    #@33
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@36
    :cond_36
    return-void
.end method

.method private drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V
    .registers 7

    #@0
    .line 1832
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 1833
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@5
    .line 1835
    invoke-direct {p0, p4}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    #@8
    move-result p4

    #@9
    int-to-float p2, p2

    #@a
    mul-float/2addr p4, p2

    #@b
    float-to-int p2, p4

    #@c
    add-int/2addr v0, p2

    #@d
    int-to-float p2, v0

    #@e
    .line 1836
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@11
    move-result-object p4

    #@12
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    #@15
    move-result p4

    #@16
    int-to-float p4, p4

    #@17
    const/high16 v0, 0x40000000    # 2.0f

    #@19
    div-float/2addr p4, v0

    #@1a
    sub-float/2addr p2, p4

    #@1b
    int-to-float p3, p3

    #@1c
    .line 1837
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@1f
    move-result-object p4

    #@20
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    #@23
    move-result p4

    #@24
    int-to-float p4, p4

    #@25
    div-float/2addr p4, v0

    #@26
    sub-float/2addr p3, p4

    #@27
    .line 1833
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    #@2a
    .line 1838
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@2d
    .line 1839
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@30
    return-void
.end method

.method private drawThumbs(Landroid/graphics/Canvas;II)V
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    .line 1812
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_5f

    #@9
    .line 1813
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/Float;

    #@11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@14
    move-result v6

    #@15
    .line 1814
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    if-eqz v7, :cond_21

    #@19
    move-object v2, p0

    #@1a
    move-object v3, p1

    #@1b
    move v4, p2

    #@1c
    move v5, p3

    #@1d
    .line 1815
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/slider/BaseSlider;->drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    #@20
    goto :goto_5c

    #@21
    .line 1816
    :cond_21
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    #@23
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@26
    move-result v1

    #@27
    if-ge v0, v1, :cond_3a

    #@29
    .line 1817
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    #@2b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    move-object v7, v1

    #@30
    check-cast v7, Landroid/graphics/drawable/Drawable;

    #@32
    move-object v2, p0

    #@33
    move-object v3, p1

    #@34
    move v4, p2

    #@35
    move v5, p3

    #@36
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/slider/BaseSlider;->drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    #@39
    goto :goto_5c

    #@3a
    .line 1821
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_53

    #@40
    .line 1822
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@42
    int-to-float v1, v1

    #@43
    .line 1823
    invoke-direct {p0, v6}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    #@46
    move-result v2

    #@47
    int-to-float v3, p2

    #@48
    mul-float/2addr v2, v3

    #@49
    add-float/2addr v1, v2

    #@4a
    int-to-float v2, p3

    #@4b
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@4d
    int-to-float v3, v3

    #@4e
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    #@50
    .line 1822
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@53
    .line 1825
    :cond_53
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@55
    move-object v2, p0

    #@56
    move-object v3, p1

    #@57
    move v4, p2

    #@58
    move v5, p3

    #@59
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/slider/BaseSlider;->drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    #@5c
    :goto_5c
    add-int/lit8 v0, v0, 0x1

    #@5e
    goto :goto_1

    #@5f
    :cond_5f
    return-void
.end method

.method private ensureLabelsAdded()V
    .registers 8

    #@0
    .line 2197
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_6

    #@5
    return-void

    #@6
    .line 2205
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    #@8
    const/4 v2, 0x1

    #@9
    if-nez v0, :cond_19

    #@b
    .line 2206
    iput-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    #@d
    .line 2207
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Landroid/animation/ValueAnimator;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    #@13
    const/4 v3, 0x0

    #@14
    .line 2208
    iput-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    #@16
    .line 2209
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    #@19
    .line 2212
    :cond_19
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@1b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v0

    #@1f
    const/4 v3, 0x0

    #@20
    move v4, v3

    #@21
    .line 2214
    :goto_21
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v5

    #@27
    if-ge v4, v5, :cond_4c

    #@29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_4c

    #@2f
    .line 2215
    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@31
    if-ne v4, v5, :cond_34

    #@33
    goto :goto_49

    #@34
    .line 2220
    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    check-cast v5, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@3a
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v6

    #@40
    check-cast v6, Ljava/lang/Float;

    #@42
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    #@45
    move-result v6

    #@46
    invoke-direct {p0, v5, v6}, Lcom/google/android/material/slider/BaseSlider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    #@49
    :goto_49
    add-int/lit8 v4, v4, 0x1

    #@4b
    goto :goto_21

    #@4c
    .line 2223
    :cond_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_6a

    #@52
    .line 2230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@58
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@5a
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@5c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v1

    #@60
    check-cast v1, Ljava/lang/Float;

    #@62
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@65
    move-result v1

    #@66
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/slider/BaseSlider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    #@69
    return-void

    #@6a
    .line 2224
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6c
    new-array v1, v1, [Ljava/lang/Object;

    #@6e
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@70
    .line 2226
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@73
    move-result v4

    #@74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v4

    #@78
    aput-object v4, v1, v3

    #@7a
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7f
    move-result v3

    #@80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83
    move-result-object v3

    #@84
    aput-object v3, v1, v2

    #@86
    const-string v2, "Not enough labels(%d) to display all the values(%d)"

    #@88
    .line 2225
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v0
.end method

.method private ensureLabelsRemoved()V
    .registers 3

    #@0
    .line 2177
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    #@2
    if-eqz v0, :cond_1d

    #@4
    const/4 v0, 0x0

    #@5
    .line 2178
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    #@7
    .line 2179
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Landroid/animation/ValueAnimator;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    #@d
    const/4 v1, 0x0

    #@e
    .line 2180
    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    #@10
    .line 2181
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$2;

    #@12
    invoke-direct {v1, p0}, Lcom/google/android/material/slider/BaseSlider$2;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    #@15
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@18
    .line 2192
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    #@1a
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    #@1d
    :cond_1d
    return-void
.end method

.method private focusThumbOnFocusGained(I)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    const v1, 0x7fffffff

    #@4
    if-eq p1, v0, :cond_20

    #@6
    const/4 v0, 0x2

    #@7
    const/high16 v2, -0x80000000

    #@9
    if-eq p1, v0, :cond_1c

    #@b
    const/16 v0, 0x11

    #@d
    if-eq p1, v0, :cond_18

    #@f
    const/16 v0, 0x42

    #@11
    if-eq p1, v0, :cond_14

    #@13
    goto :goto_23

    #@14
    .line 2551
    :cond_14
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    #@17
    goto :goto_23

    #@18
    .line 2545
    :cond_18
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    #@1b
    goto :goto_23

    #@1c
    .line 2548
    :cond_1c
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    #@1f
    goto :goto_23

    #@20
    .line 2542
    :cond_20
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    #@23
    :goto_23
    return-void
.end method

.method private formatValue(F)Ljava/lang/String;
    .registers 5

    #@0
    .line 2234
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 2235
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    #@8
    invoke-interface {v0, p1}, Lcom/google/android/material/slider/LabelFormatter;->getFormattedValue(F)Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    return-object p1

    #@d
    :cond_d
    float-to-int v0, p1

    #@e
    int-to-float v0, v0

    #@f
    cmpl-float v0, v0, p1

    #@11
    if-nez v0, :cond_16

    #@13
    const-string v0, "%.0f"

    #@15
    goto :goto_18

    #@16
    :cond_16
    const-string v0, "%.2f"

    #@18
    :goto_18
    const/4 v1, 0x1

    #@19
    new-array v1, v1, [Ljava/lang/Object;

    #@1b
    const/4 v2, 0x0

    #@1c
    .line 2238
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1f
    move-result-object p1

    #@20
    aput-object p1, v1, v2

    #@22
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object p1

    #@26
    return-object p1
.end method

.method private getActiveRange()[F
    .registers 7

    #@0
    .line 1742
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Float;

    #@a
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@d
    move-result v0

    #@e
    .line 1743
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/Float;

    #@18
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@1b
    move-result v1

    #@1c
    .line 1744
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v2

    #@22
    const/4 v3, 0x1

    #@23
    if-ne v2, v3, :cond_27

    #@25
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@27
    :cond_27
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    #@2a
    move-result v1

    #@2b
    .line 1745
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    #@2e
    move-result v0

    #@2f
    .line 1748
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    #@32
    move-result v2

    #@33
    const/4 v4, 0x0

    #@34
    const/4 v5, 0x2

    #@35
    if-eqz v2, :cond_3e

    #@37
    new-array v2, v5, [F

    #@39
    aput v0, v2, v4

    #@3b
    aput v1, v2, v3

    #@3d
    goto :goto_44

    #@3e
    :cond_3e
    new-array v2, v5, [F

    #@40
    aput v1, v2, v4

    #@42
    aput v0, v2, v3

    #@44
    :goto_44
    return-object v2
.end method

.method private static getAnimatorCurrentValueOrDefault(Landroid/animation/ValueAnimator;F)F
    .registers 3

    #@0
    if-eqz p0, :cond_15

    #@2
    .line 2107
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_15

    #@8
    .line 2108
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    check-cast p1, Ljava/lang/Float;

    #@e
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@11
    move-result p1

    #@12
    .line 2109
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    #@15
    :cond_15
    return p1
.end method

.method private getClampedValue(IF)F
    .registers 6

    #@0
    .line 2057
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    #@3
    move-result v0

    #@4
    .line 2058
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    #@6
    if-nez v1, :cond_c

    #@8
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->dimenToValue(F)F

    #@b
    move-result v0

    #@c
    .line 2059
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_13

    #@12
    neg-float v0, v0

    #@13
    :cond_13
    add-int/lit8 v1, p1, 0x1

    #@15
    .line 2063
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v2

    #@1b
    if-lt v1, v2, :cond_20

    #@1d
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@1f
    goto :goto_2d

    #@20
    :cond_20
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Ljava/lang/Float;

    #@28
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@2b
    move-result v1

    #@2c
    sub-float/2addr v1, v0

    #@2d
    :goto_2d
    add-int/lit8 p1, p1, -0x1

    #@2f
    if-gez p1, :cond_34

    #@31
    .line 2064
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@33
    goto :goto_41

    #@34
    :cond_34
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object p1

    #@3a
    check-cast p1, Ljava/lang/Float;

    #@3c
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@3f
    move-result p1

    #@40
    add-float/2addr p1, v0

    #@41
    .line 2065
    :goto_41
    invoke-static {p2, p1, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    #@44
    move-result p1

    #@45
    return p1
.end method

.method private getColorForState(Landroid/content/res/ColorStateList;)I
    .registers 4

    #@0
    .line 2342
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method private getValueOfTouchPosition()F
    .registers 7

    #@0
    .line 2086
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->snapPosition(F)D

    #@5
    move-result-wide v0

    #@6
    .line 2089
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_10

    #@c
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@e
    sub-double v0, v2, v0

    #@10
    .line 2092
    :cond_10
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@12
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@14
    sub-float/2addr v2, v3

    #@15
    float-to-double v4, v2

    #@16
    mul-double/2addr v0, v4

    #@17
    float-to-double v2, v3

    #@18
    add-double/2addr v0, v2

    #@19
    double-to-float v0, v0

    #@1a
    return v0
.end method

.method private getValueOfTouchPositionAbsolute()F
    .registers 4

    #@0
    .line 2018
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    #@2
    .line 2019
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_c

    #@8
    const/high16 v1, 0x3f800000    # 1.0f

    #@a
    sub-float v0, v1, v0

    #@c
    .line 2022
    :cond_c
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@e
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@10
    sub-float/2addr v1, v2

    #@11
    mul-float/2addr v0, v1

    #@12
    add-float/2addr v0, v2

    #@13
    return v0
.end method

.method private initializeCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 890
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p1

    #@c
    .line 891
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-object p1
.end method

.method private invalidateTrack()V
    .registers 4

    #@0
    .line 2261
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    #@2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    #@4
    int-to-float v1, v1

    #@5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@8
    .line 2262
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    #@a
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    #@c
    int-to-float v1, v1

    #@d
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@10
    .line 2263
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    #@12
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    #@14
    int-to-float v1, v1

    #@15
    const/high16 v2, 0x40000000    # 2.0f

    #@17
    div-float/2addr v1, v2

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@1b
    .line 2264
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    #@1d
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    #@1f
    int-to-float v1, v1

    #@20
    div-float/2addr v1, v2

    #@21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@24
    return-void
.end method

.method private isInVerticalScrollingContainer()Z
    .registers 6

    #@0
    .line 2275
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 2276
    :goto_4
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_29

    #@9
    .line 2277
    move-object v1, v0

    #@a
    check-cast v1, Landroid/view/ViewGroup;

    #@c
    const/4 v3, 0x1

    #@d
    .line 2278
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_1a

    #@13
    const/4 v4, -0x1

    #@14
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1b

    #@1a
    :cond_1a
    move v2, v3

    #@1b
    :cond_1b
    if-eqz v2, :cond_24

    #@1d
    .line 2279
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_24

    #@23
    return v3

    #@24
    .line 2282
    :cond_24
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@27
    move-result-object v0

    #@28
    goto :goto_4

    #@29
    :cond_29
    return v2
.end method

.method private isMultipleOfStepSize(F)Z
    .registers 6

    #@0
    .line 540
    new-instance v0, Ljava/math/BigDecimal;

    #@2
    .line 541
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@9
    new-instance p1, Ljava/math/BigDecimal;

    #@b
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@d
    .line 542
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@14
    sget-object v1, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    #@16
    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    #@19
    move-result-object p1

    #@1a
    .line 543
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    #@1d
    move-result-wide v0

    #@1e
    .line 546
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    #@21
    move-result-wide v2

    #@22
    long-to-double v2, v2

    #@23
    sub-double/2addr v2, v0

    #@24
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    #@27
    move-result-wide v0

    #@28
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    #@2d
    cmpg-double p1, v0, v2

    #@2f
    if-gez p1, :cond_33

    #@31
    const/4 p1, 0x1

    #@32
    goto :goto_34

    #@33
    :cond_33
    const/4 p1, 0x0

    #@34
    :goto_34
    return p1
.end method

.method private loadResources(Landroid/content/res/Resources;)V
    .registers 3

    #@0
    .line 398
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    #@2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->minWidgetHeight:I

    #@8
    .line 400
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    #@a
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    #@10
    .line 401
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@12
    .line 403
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_thumb_radius:I

    #@14
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbRadius:I

    #@1a
    .line 404
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_height:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultTrackHeight:I

    #@22
    .line 406
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_padding:I

    #@24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@27
    move-result p1

    #@28
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->labelPadding:I

    #@2a
    return-void
.end method

.method private maybeCalculateTicksCoordinates()V
    .registers 8

    #@0
    .line 1655
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpg-float v0, v0, v1

    #@5
    if-gtz v0, :cond_8

    #@7
    return-void

    #@8
    .line 1659
    :cond_8
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    #@b
    .line 1661
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@d
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@f
    sub-float/2addr v0, v1

    #@10
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@12
    div-float/2addr v0, v1

    #@13
    const/high16 v1, 0x3f800000    # 1.0f

    #@15
    add-float/2addr v0, v1

    #@16
    float-to-int v0, v0

    #@17
    .line 1663
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@19
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    #@1b
    mul-int/lit8 v2, v2, 0x2

    #@1d
    div-int/2addr v1, v2

    #@1e
    add-int/lit8 v1, v1, 0x1

    #@20
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@23
    move-result v0

    #@24
    .line 1664
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    #@26
    if-eqz v1, :cond_2d

    #@28
    array-length v1, v1

    #@29
    mul-int/lit8 v2, v0, 0x2

    #@2b
    if-eq v1, v2, :cond_33

    #@2d
    :cond_2d
    mul-int/lit8 v1, v0, 0x2

    #@2f
    .line 1665
    new-array v1, v1, [F

    #@31
    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    #@33
    .line 1668
    :cond_33
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@35
    int-to-float v1, v1

    #@36
    add-int/lit8 v2, v0, -0x1

    #@38
    int-to-float v2, v2

    #@39
    div-float/2addr v1, v2

    #@3a
    const/4 v2, 0x0

    #@3b
    :goto_3b
    mul-int/lit8 v3, v0, 0x2

    #@3d
    if-ge v2, v3, :cond_58

    #@3f
    .line 1670
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    #@41
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@43
    int-to-float v4, v4

    #@44
    int-to-float v5, v2

    #@45
    const/high16 v6, 0x40000000    # 2.0f

    #@47
    div-float/2addr v5, v6

    #@48
    mul-float/2addr v5, v1

    #@49
    add-float/2addr v4, v5

    #@4a
    aput v4, v3, v2

    #@4c
    add-int/lit8 v4, v2, 0x1

    #@4e
    .line 1671
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTrackCenter()I

    #@51
    move-result v5

    #@52
    int-to-float v5, v5

    #@53
    aput v5, v3, v4

    #@55
    add-int/lit8 v2, v2, 0x2

    #@57
    goto :goto_3b

    #@58
    :cond_58
    return-void
.end method

.method private maybeDrawCompatHalo(Landroid/graphics/Canvas;II)V
    .registers 12

    #@0
    .line 1844
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_42

    #@6
    .line 1845
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@8
    int-to-float v0, v0

    #@9
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@b
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/lang/Float;

    #@13
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    #@1a
    move-result v1

    #@1b
    int-to-float p2, p2

    #@1c
    mul-float/2addr v1, p2

    #@1d
    add-float/2addr v0, v1

    #@1e
    float-to-int p2, v0

    #@1f
    .line 1846
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@21
    const/16 v1, 0x1c

    #@23
    if-ge v0, v1, :cond_38

    #@25
    .line 1848
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    #@27
    sub-int v1, p2, v0

    #@29
    int-to-float v3, v1

    #@2a
    sub-int v1, p3, v0

    #@2c
    int-to-float v4, v1

    #@2d
    add-int v1, p2, v0

    #@2f
    int-to-float v5, v1

    #@30
    add-int/2addr v0, p3

    #@31
    int-to-float v6, v0

    #@32
    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@34
    move-object v2, p1

    #@35
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    #@38
    :cond_38
    int-to-float p2, p2

    #@39
    int-to-float p3, p3

    #@3a
    .line 1855
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    #@3c
    int-to-float v0, v0

    #@3d
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    #@3f
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@42
    :cond_42
    return-void
.end method

.method private maybeDrawTicks(Landroid/graphics/Canvas;)V
    .registers 7

    #@0
    .line 1785
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    #@2
    if-eqz v0, :cond_3f

    #@4
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@6
    const/4 v1, 0x0

    #@7
    cmpg-float v0, v0, v1

    #@9
    if-gtz v0, :cond_c

    #@b
    goto :goto_3f

    #@c
    .line 1789
    :cond_c
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    #@f
    move-result-object v0

    #@10
    .line 1790
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    #@12
    const/4 v2, 0x0

    #@13
    aget v3, v0, v2

    #@15
    invoke-static {v1, v3}, Lcom/google/android/material/slider/BaseSlider;->pivotIndex([FF)I

    #@18
    move-result v1

    #@19
    .line 1791
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    #@1b
    const/4 v4, 0x1

    #@1c
    aget v0, v0, v4

    #@1e
    invoke-static {v3, v0}, Lcom/google/android/material/slider/BaseSlider;->pivotIndex([FF)I

    #@21
    move-result v0

    #@22
    .line 1794
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    #@24
    mul-int/lit8 v1, v1, 0x2

    #@26
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    #@28
    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    #@2b
    .line 1797
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    #@2d
    mul-int/lit8 v0, v0, 0x2

    #@2f
    sub-int v3, v0, v1

    #@31
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    #@33
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    #@36
    .line 1804
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    #@38
    array-length v2, v1

    #@39
    sub-int/2addr v2, v0

    #@3a
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    #@3c
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    #@3f
    :cond_3f
    :goto_3f
    return-void
.end method

.method private maybeIncreaseTrackSidePadding()Z
    .registers 5

    #@0
    .line 505
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbRadius:I

    #@4
    sub-int/2addr v0, v1

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v0

    #@a
    .line 506
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    #@c
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->defaultTrackHeight:I

    #@e
    sub-int/2addr v2, v3

    #@f
    div-int/lit8 v2, v2, 0x2

    #@11
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v2

    #@15
    .line 507
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    #@17
    .line 508
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result v0

    #@1b
    add-int/2addr v3, v0

    #@1c
    .line 509
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@1e
    if-ne v0, v3, :cond_21

    #@20
    return v1

    #@21
    .line 512
    :cond_21
    iput v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@23
    .line 513
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_30

    #@29
    .line 514
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getWidth()I

    #@2c
    move-result v0

    #@2d
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->updateTrackWidth(I)V

    #@30
    :cond_30
    const/4 v0, 0x1

    #@31
    return v0
.end method

.method private maybeIncreaseWidgetHeight()Z
    .registers 4

    #@0
    .line 1295
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getPaddingTop()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getPaddingBottom()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    .line 1296
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    #@b
    add-int/2addr v1, v0

    #@c
    .line 1297
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@e
    mul-int/lit8 v0, v0, 0x2

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getPaddingTop()I

    #@13
    move-result v2

    #@14
    add-int/2addr v0, v2

    #@15
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getPaddingBottom()I

    #@18
    move-result v2

    #@19
    add-int/2addr v0, v2

    #@1a
    .line 1299
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->minWidgetHeight:I

    #@1c
    .line 1300
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v0

    #@20
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v0

    #@24
    .line 1301
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    #@26
    if-ne v0, v1, :cond_2a

    #@28
    const/4 v0, 0x0

    #@29
    return v0

    #@2a
    .line 1304
    :cond_2a
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    #@2c
    const/4 v0, 0x1

    #@2d
    return v0
.end method

.method private moveFocus(I)Z
    .registers 13

    #@0
    .line 2455
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@2
    int-to-long v1, v0

    #@3
    int-to-long v3, p1

    #@4
    add-long v5, v1, v3

    #@6
    const-wide/16 v7, 0x0

    #@8
    .line 2458
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@d
    move-result p1

    #@e
    const/4 v1, 0x1

    #@f
    sub-int/2addr p1, v1

    #@10
    int-to-long v9, p1

    #@11
    invoke-static/range {v5 .. v10}, Landroidx/core/math/MathUtils;->clamp(JJJ)J

    #@14
    move-result-wide v2

    #@15
    long-to-int p1, v2

    #@16
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@18
    if-ne p1, v0, :cond_1c

    #@1a
    const/4 p1, 0x0

    #@1b
    return p1

    #@1c
    .line 2463
    :cond_1c
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@1e
    const/4 v2, -0x1

    #@1f
    if-eq v0, v2, :cond_23

    #@21
    .line 2464
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@23
    .line 2466
    :cond_23
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    #@26
    .line 2467
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@29
    return v1
.end method

.method private moveFocusInAbsoluteDirection(I)Z
    .registers 3

    #@0
    .line 2479
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    const/high16 v0, -0x80000000

    #@8
    if-ne p1, v0, :cond_e

    #@a
    const p1, 0x7fffffff

    #@d
    goto :goto_f

    #@e
    :cond_e
    neg-int p1, p1

    #@f
    .line 2483
    :cond_f
    :goto_f
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    #@12
    move-result p1

    #@13
    return p1
.end method

.method private normalizeValue(F)F
    .registers 4

    #@0
    .line 1770
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@2
    sub-float/2addr p1, v0

    #@3
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@5
    sub-float/2addr v1, v0

    #@6
    div-float/2addr p1, v1

    #@7
    .line 1771
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_11

    #@d
    const/high16 v0, 0x3f800000    # 1.0f

    #@f
    sub-float/2addr v0, p1

    #@10
    return v0

    #@11
    :cond_11
    return p1
.end method

.method private onKeyDownNoActiveThumb(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;
    .registers 6

    #@0
    const/16 v0, 0x3d

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x1

    #@4
    if-eq p1, v0, :cond_47

    #@6
    const/16 p2, 0x42

    #@8
    if-eq p1, p2, :cond_3b

    #@a
    const/16 p2, 0x51

    #@c
    if-eq p1, p2, :cond_33

    #@e
    const/16 p2, 0x45

    #@10
    if-eq p1, p2, :cond_2b

    #@12
    const/16 p2, 0x46

    #@14
    if-eq p1, p2, :cond_33

    #@16
    packed-switch p1, :pswitch_data_6c

    #@19
    const/4 p1, 0x0

    #@1a
    return-object p1

    #@1b
    .line 2417
    :pswitch_1b
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    #@1e
    .line 2418
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@21
    move-result-object p1

    #@22
    return-object p1

    #@23
    .line 2411
    :pswitch_23
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    #@26
    .line 2412
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@29
    move-result-object p1

    #@2a
    return-object p1

    #@2b
    .line 2414
    :cond_2b
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    #@2e
    .line 2415
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@31
    move-result-object p1

    #@32
    return-object p1

    #@33
    .line 2422
    :cond_33
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    #@36
    .line 2423
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@39
    move-result-object p1

    #@3a
    return-object p1

    #@3b
    .line 2426
    :cond_3b
    :pswitch_3b
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@3d
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@3f
    .line 2427
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@42
    .line 2428
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@45
    move-result-object p1

    #@46
    return-object p1

    #@47
    .line 2402
    :cond_47
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@4a
    move-result p1

    #@4b
    if-eqz p1, :cond_56

    #@4d
    .line 2403
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    #@50
    move-result p1

    #@51
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@54
    move-result-object p1

    #@55
    return-object p1

    #@56
    .line 2406
    :cond_56
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    #@59
    move-result p1

    #@5a
    if-eqz p1, :cond_65

    #@5c
    .line 2407
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    #@5f
    move-result p1

    #@60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@63
    move-result-object p1

    #@64
    return-object p1

    #@65
    :cond_65
    const/4 p1, 0x0

    #@66
    .line 2409
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@69
    move-result-object p1

    #@6a
    return-object p1

    #@6b
    nop

    #@6c
    :pswitch_data_6c
    .packed-switch 0x15
        :pswitch_23
        :pswitch_1b
        :pswitch_3b
    .end packed-switch
.end method

.method private onStartTrackingTouch()V
    .registers 3

    #@0
    .line 2308
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/material/slider/BaseOnSliderTouchListener;

    #@12
    .line 2309
    invoke-interface {v1, p0}, Lcom/google/android/material/slider/BaseOnSliderTouchListener;->onStartTrackingTouch(Ljava/lang/Object;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method private onStopTrackingTouch()V
    .registers 3

    #@0
    .line 2315
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/material/slider/BaseOnSliderTouchListener;

    #@12
    .line 2316
    invoke-interface {v1, p0}, Lcom/google/android/material/slider/BaseOnSliderTouchListener;->onStopTrackingTouch(Ljava/lang/Object;)V

    #@15
    goto :goto_6

    #@16
    :cond_16
    return-void
.end method

.method private static pivotIndex([FF)I
    .registers 2

    #@0
    .line 1958
    array-length p0, p0

    #@1
    div-int/lit8 p0, p0, 0x2

    #@3
    add-int/lit8 p0, p0, -0x1

    #@5
    int-to-float p0, p0

    #@6
    mul-float/2addr p1, p0

    #@7
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@a
    move-result p0

    #@b
    return p0
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 410
    sget-object v2, Lcom/google/android/material/R$styleable;->Slider:[I

    #@2
    sget v4, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    #@4
    const/4 v6, 0x0

    #@5
    new-array v5, v6, [I

    #@7
    move-object v0, p1

    #@8
    move-object v1, p2

    #@9
    move v3, p3

    #@a
    .line 411
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@d
    move-result-object p2

    #@e
    .line 414
    sget p3, Lcom/google/android/material/R$styleable;->Slider_labelStyle:I

    #@10
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    #@12
    .line 415
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@15
    move-result p3

    #@16
    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->labelStyle:I

    #@18
    .line 417
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    #@1a
    const/4 v0, 0x0

    #@1b
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1e
    move-result p3

    #@1f
    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@21
    .line 418
    sget p3, Lcom/google/android/material/R$styleable;->Slider_android_valueTo:I

    #@23
    const/high16 v1, 0x3f800000    # 1.0f

    #@25
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@28
    move-result p3

    #@29
    iput p3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@2b
    const/4 p3, 0x1

    #@2c
    new-array v1, p3, [Ljava/lang/Float;

    #@2e
    .line 419
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@30
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@33
    move-result-object v2

    #@34
    aput-object v2, v1, v6

    #@36
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    #@39
    .line 420
    sget v1, Lcom/google/android/material/R$styleable;->Slider_android_stepSize:I

    #@3b
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3e
    move-result v1

    #@3f
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@41
    .line 423
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@44
    move-result-object v1

    #@45
    const/16 v2, 0x30

    #@47
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    #@4a
    move-result v1

    #@4b
    float-to-double v1, v1

    #@4c
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    #@4f
    move-result-wide v1

    #@50
    double-to-float v1, v1

    #@51
    .line 424
    sget v2, Lcom/google/android/material/R$styleable;->Slider_minTouchTargetSize:I

    #@53
    .line 427
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@56
    move-result v1

    #@57
    float-to-double v1, v1

    #@58
    .line 426
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    #@5b
    move-result-wide v1

    #@5c
    double-to-int v1, v1

    #@5d
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->minTouchTargetSize:I

    #@5f
    .line 429
    sget v1, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    #@61
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@64
    move-result v1

    #@65
    if-eqz v1, :cond_6a

    #@67
    .line 432
    sget v2, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    #@69
    goto :goto_6c

    #@6a
    :cond_6a
    sget v2, Lcom/google/android/material/R$styleable;->Slider_trackColorInactive:I

    #@6c
    :goto_6c
    if-eqz v1, :cond_71

    #@6e
    .line 434
    sget v1, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    #@70
    goto :goto_73

    #@71
    :cond_71
    sget v1, Lcom/google/android/material/R$styleable;->Slider_trackColorActive:I

    #@73
    .line 437
    :goto_73
    invoke-static {p1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@76
    move-result-object v2

    #@77
    if-eqz v2, :cond_7a

    #@79
    goto :goto_80

    #@7a
    .line 441
    :cond_7a
    sget v2, Lcom/google/android/material/R$color;->material_slider_inactive_track_color:I

    #@7c
    invoke-static {p1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@7f
    move-result-object v2

    #@80
    .line 438
    :goto_80
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    #@83
    .line 444
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@86
    move-result-object v1

    #@87
    if-eqz v1, :cond_8a

    #@89
    goto :goto_90

    #@8a
    .line 448
    :cond_8a
    sget v1, Lcom/google/android/material/R$color;->material_slider_active_track_color:I

    #@8c
    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@8f
    move-result-object v1

    #@90
    .line 445
    :goto_90
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    #@93
    .line 450
    sget v1, Lcom/google/android/material/R$styleable;->Slider_thumbColor:I

    #@95
    .line 451
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@98
    move-result-object v1

    #@99
    .line 452
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@9b
    invoke-virtual {v2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@9e
    .line 454
    sget v1, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    #@a0
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@a3
    move-result v1

    #@a4
    if-eqz v1, :cond_af

    #@a6
    .line 455
    sget v1, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    #@a8
    .line 456
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@ab
    move-result-object v1

    #@ac
    .line 455
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    #@af
    .line 458
    :cond_af
    sget v1, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeWidth:I

    #@b1
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@b4
    move-result v1

    #@b5
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    #@b8
    .line 460
    sget v1, Lcom/google/android/material/R$styleable;->Slider_haloColor:I

    #@ba
    .line 461
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@bd
    move-result-object v1

    #@be
    if-eqz v1, :cond_c1

    #@c0
    goto :goto_c7

    #@c1
    .line 465
    :cond_c1
    sget v1, Lcom/google/android/material/R$color;->material_slider_halo_color:I

    #@c3
    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@c6
    move-result-object v1

    #@c7
    .line 462
    :goto_c7
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    #@ca
    .line 467
    sget v1, Lcom/google/android/material/R$styleable;->Slider_tickVisible:I

    #@cc
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@cf
    move-result v1

    #@d0
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    #@d2
    .line 468
    sget v1, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    #@d4
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@d7
    move-result v1

    #@d8
    if-eqz v1, :cond_dd

    #@da
    .line 470
    sget v2, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    #@dc
    goto :goto_df

    #@dd
    :cond_dd
    sget v2, Lcom/google/android/material/R$styleable;->Slider_tickColorInactive:I

    #@df
    :goto_df
    if-eqz v1, :cond_e4

    #@e1
    .line 472
    sget v1, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    #@e3
    goto :goto_e6

    #@e4
    :cond_e4
    sget v1, Lcom/google/android/material/R$styleable;->Slider_tickColorActive:I

    #@e6
    .line 474
    :goto_e6
    invoke-static {p1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@e9
    move-result-object v2

    #@ea
    if-eqz v2, :cond_ed

    #@ec
    goto :goto_f3

    #@ed
    .line 478
    :cond_ed
    sget v2, Lcom/google/android/material/R$color;->material_slider_inactive_tick_marks_color:I

    #@ef
    invoke-static {p1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@f2
    move-result-object v2

    #@f3
    .line 475
    :goto_f3
    invoke-virtual {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    #@f6
    .line 481
    invoke-static {p1, p2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@f9
    move-result-object v1

    #@fa
    if-eqz v1, :cond_fd

    #@fc
    goto :goto_103

    #@fd
    .line 485
    :cond_fd
    sget v1, Lcom/google/android/material/R$color;->material_slider_active_tick_marks_color:I

    #@ff
    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@102
    move-result-object v1

    #@103
    .line 482
    :goto_103
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    #@106
    .line 488
    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbRadius:I

    #@108
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@10b
    move-result p1

    #@10c
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    #@10f
    .line 489
    sget p1, Lcom/google/android/material/R$styleable;->Slider_haloRadius:I

    #@111
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@114
    move-result p1

    #@115
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    #@118
    .line 491
    sget p1, Lcom/google/android/material/R$styleable;->Slider_thumbElevation:I

    #@11a
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@11d
    move-result p1

    #@11e
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    #@121
    .line 493
    sget p1, Lcom/google/android/material/R$styleable;->Slider_trackHeight:I

    #@123
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@126
    move-result p1

    #@127
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    #@12a
    .line 495
    sget p1, Lcom/google/android/material/R$styleable;->Slider_labelBehavior:I

    #@12c
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@12f
    move-result p1

    #@130
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    #@133
    .line 497
    sget p1, Lcom/google/android/material/R$styleable;->Slider_android_enabled:I

    #@135
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@138
    move-result p1

    #@139
    if-nez p1, :cond_13e

    #@13b
    .line 498
    invoke-virtual {p0, v6}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    #@13e
    .line 501
    :cond_13e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@141
    return-void
.end method

.method private scheduleAccessibilityEventSender(I)V
    .registers 4

    #@0
    .line 2589
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    #@2
    if-nez v0, :cond_d

    #@4
    .line 2590
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;-><init>(Lcom/google/android/material/slider/BaseSlider;Lcom/google/android/material/slider/BaseSlider$1;)V

    #@a
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    #@c
    goto :goto_10

    #@d
    .line 2592
    :cond_d
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@10
    .line 2594
    :goto_10
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    #@12
    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->setVirtualViewId(I)V

    #@15
    .line 2595
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    #@17
    const-wide/16 v0, 0xc8

    #@19
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/slider/BaseSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1c
    return-void
.end method

.method private setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V
    .registers 6

    #@0
    .line 2242
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    #@7
    .line 2244
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@9
    .line 2246
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    #@c
    move-result p2

    #@d
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@f
    int-to-float v1, v1

    #@10
    mul-float/2addr p2, v1

    #@11
    float-to-int p2, p2

    #@12
    add-int/2addr v0, p2

    #@13
    .line 2247
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    #@16
    move-result p2

    #@17
    div-int/lit8 p2, p2, 0x2

    #@19
    sub-int/2addr v0, p2

    #@1a
    .line 2248
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTrackCenter()I

    #@1d
    move-result p2

    #@1e
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelPadding:I

    #@20
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@22
    add-int/2addr v1, v2

    #@23
    sub-int/2addr p2, v1

    #@24
    .line 2249
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    #@27
    move-result v1

    #@28
    sub-int v1, p2, v1

    #@2a
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    #@2d
    move-result v2

    #@2e
    add-int/2addr v2, v0

    #@2f
    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setBounds(IIII)V

    #@32
    .line 2253
    new-instance p2, Landroid/graphics/Rect;

    #@34
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    #@37
    move-result-object v0

    #@38
    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@3b
    .line 2254
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    #@3e
    move-result-object v0

    #@3f
    invoke-static {v0, p0, p2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    #@42
    .line 2255
    invoke-virtual {p1, p2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setBounds(Landroid/graphics/Rect;)V

    #@45
    .line 2257
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    #@48
    move-result-object p2

    #@49
    invoke-interface {p2, p1}, Lcom/google/android/material/internal/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    #@4c
    return-void
.end method

.method private setValuesInternal(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 722
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_33

    #@6
    .line 726
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@9
    .line 728
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v1

    #@13
    if-ne v0, v1, :cond_1e

    #@15
    .line 729
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1e

    #@1d
    return-void

    #@1e
    .line 734
    :cond_1e
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@20
    const/4 p1, 0x1

    #@21
    .line 735
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    #@23
    const/4 p1, 0x0

    #@24
    .line 737
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@26
    .line 738
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    #@29
    .line 739
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->createLabelPool()V

    #@2c
    .line 740
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->dispatchOnChangedProgrammatically()V

    #@2f
    .line 741
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@32
    return-void

    #@33
    .line 723
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@35
    const-string v0, "At least one value must be set"

    #@37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw p1
.end method

.method private shouldAlwaysShowLabel()Z
    .registers 3

    #@0
    .line 1244
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return v0
.end method

.method private shouldDrawCompatHalo()Z
    .registers 2

    #@0
    .line 1860
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    #@2
    if-nez v0, :cond_f

    #@4
    .line 1862
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    #@a
    if-nez v0, :cond_d

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
    return v0
.end method

.method private snapActiveThumbToValue(F)Z
    .registers 3

    #@0
    .line 2036
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@2
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method private snapPosition(F)D
    .registers 7

    #@0
    .line 1962
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v1, v0, v1

    #@5
    if-lez v1, :cond_18

    #@7
    .line 1963
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@9
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@b
    sub-float/2addr v1, v2

    #@c
    div-float/2addr v1, v0

    #@d
    float-to-int v0, v1

    #@e
    int-to-float v1, v0

    #@f
    mul-float/2addr p1, v1

    #@10
    .line 1964
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@13
    move-result p1

    #@14
    int-to-double v1, p1

    #@15
    int-to-double v3, v0

    #@16
    div-double/2addr v1, v3

    #@17
    return-wide v1

    #@18
    :cond_18
    float-to-double v0, p1

    #@19
    return-wide v0
.end method

.method private snapThumbToValue(IF)Z
    .registers 7

    #@0
    .line 2040
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@2
    .line 2043
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Float;

    #@a
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@d
    move-result v0

    #@e
    sub-float v0, p2, v0

    #@10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@13
    move-result v0

    #@14
    float-to-double v0, v0

    #@15
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    #@1a
    cmpg-double v0, v0, v2

    #@1c
    if-gez v0, :cond_20

    #@1e
    const/4 p1, 0x0

    #@1f
    return p1

    #@20
    .line 2047
    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->getClampedValue(IF)F

    #@23
    move-result p2

    #@24
    .line 2049
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@26
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@29
    move-result-object p2

    #@2a
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 2051
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchOnChangedFromUser(I)V

    #@30
    const/4 p1, 0x1

    #@31
    return p1
.end method

.method private snapTouchPosition()Z
    .registers 2

    #@0
    .line 2032
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueOfTouchPosition()F

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->snapActiveThumbToValue(F)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private updateHaloHotspot()V
    .registers 7

    #@0
    .line 1685
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_3e

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMeasuredWidth()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_3e

    #@c
    .line 1686
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    .line 1687
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    #@12
    if-eqz v1, :cond_3e

    #@14
    .line 1688
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@16
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/Float;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@21
    move-result v1

    #@22
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    #@25
    move-result v1

    #@26
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@28
    int-to-float v2, v2

    #@29
    mul-float/2addr v1, v2

    #@2a
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@2c
    int-to-float v2, v2

    #@2d
    add-float/2addr v1, v2

    #@2e
    float-to-int v1, v1

    #@2f
    .line 1689
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTrackCenter()I

    #@32
    move-result v2

    #@33
    .line 1690
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    #@35
    sub-int v4, v1, v3

    #@37
    sub-int v5, v2, v3

    #@39
    add-int/2addr v1, v3

    #@3a
    add-int/2addr v2, v3

    #@3b
    invoke-static {v0, v4, v5, v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    #@3e
    :cond_3e
    return-void
.end method

.method private updateTrackWidth(I)V
    .registers 3

    #@0
    .line 1677
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@2
    mul-int/lit8 v0, v0, 0x2

    #@4
    sub-int/2addr p1, v0

    #@5
    const/4 v0, 0x0

    #@6
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@9
    move-result p1

    #@a
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@c
    .line 1680
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    #@f
    return-void
.end method

.method private updateWidgetLayout()V
    .registers 3

    #@0
    .line 1285
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeIncreaseWidgetHeight()Z

    #@3
    move-result v0

    #@4
    .line 1286
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeIncreaseTrackSidePadding()Z

    #@7
    move-result v1

    #@8
    if-eqz v0, :cond_e

    #@a
    .line 1288
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestLayout()V

    #@d
    goto :goto_13

    #@e
    :cond_e
    if-eqz v1, :cond_13

    #@10
    .line 1290
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method private validateConfigurationIfDirty()V
    .registers 2

    #@0
    .line 609
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    #@2
    if-eqz v0, :cond_19

    #@4
    .line 610
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValueFrom()V

    #@7
    .line 611
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValueTo()V

    #@a
    .line 612
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateStepSize()V

    #@d
    .line 613
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValues()V

    #@10
    .line 614
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateMinSeparation()V

    #@13
    .line 615
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->warnAboutFloatingPointError()V

    #@16
    const/4 v0, 0x0

    #@17
    .line 616
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    #@19
    :cond_19
    return-void
.end method

.method private validateMinSeparation()V
    .registers 7

    #@0
    .line 570
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    cmpg-float v2, v0, v1

    #@7
    const/4 v3, 0x0

    #@8
    const/4 v4, 0x1

    #@9
    if-ltz v2, :cond_67

    #@b
    .line 575
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@d
    cmpl-float v5, v2, v1

    #@f
    if-lez v5, :cond_66

    #@11
    cmpl-float v1, v0, v1

    #@13
    if-lez v1, :cond_66

    #@15
    .line 576
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    #@17
    const/4 v5, 0x2

    #@18
    if-ne v1, v4, :cond_4a

    #@1a
    cmpg-float v1, v0, v2

    #@1c
    if-ltz v1, :cond_25

    #@1e
    .line 581
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->isMultipleOfStepSize(F)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_25

    #@24
    goto :goto_66

    #@25
    .line 582
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    #@27
    const/4 v2, 0x3

    #@28
    new-array v2, v2, [Ljava/lang/Object;

    #@2a
    .line 584
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2d
    move-result-object v0

    #@2e
    aput-object v0, v2, v3

    #@30
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@32
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@35
    move-result-object v0

    #@36
    aput-object v0, v2, v4

    #@38
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@3a
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3d
    move-result-object v0

    #@3e
    aput-object v0, v2, v5

    #@40
    const-string v0, "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)"

    #@42
    .line 583
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1

    #@4a
    .line 577
    :cond_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    #@4c
    new-array v2, v5, [Ljava/lang/Object;

    #@4e
    .line 579
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@51
    move-result-object v0

    #@52
    aput-object v0, v2, v3

    #@54
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@56
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@59
    move-result-object v0

    #@5a
    aput-object v0, v2, v4

    #@5c
    const-string v0, "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)"

    #@5e
    .line 578
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@65
    throw v1

    #@66
    :cond_66
    :goto_66
    return-void

    #@67
    .line 572
    :cond_67
    new-instance v1, Ljava/lang/IllegalStateException;

    #@69
    new-array v2, v4, [Ljava/lang/Object;

    #@6b
    .line 573
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@6e
    move-result-object v0

    #@6f
    aput-object v0, v2, v3

    #@71
    const-string v0, "minSeparation(%s) must be greater or equal to 0"

    #@73
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v1
.end method

.method private validateStepSize()V
    .registers 5

    #@0
    .line 550
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-lez v0, :cond_3a

    #@7
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@9
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->valueLandsOnTick(F)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_10

    #@f
    goto :goto_3a

    #@10
    .line 551
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const/4 v1, 0x3

    #@13
    new-array v1, v1, [Ljava/lang/Object;

    #@15
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@17
    .line 552
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1a
    move-result-object v2

    #@1b
    const/4 v3, 0x0

    #@1c
    aput-object v2, v1, v3

    #@1e
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@20
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@23
    move-result-object v2

    #@24
    const/4 v3, 0x1

    #@25
    aput-object v2, v1, v3

    #@27
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@29
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2c
    move-result-object v2

    #@2d
    const/4 v3, 0x2

    #@2e
    aput-object v2, v1, v3

    #@30
    const-string v2, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    #@32
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    :cond_3a
    :goto_3a
    return-void
.end method

.method private validateValueFrom()V
    .registers 5

    #@0
    .line 520
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@4
    cmpl-float v0, v0, v1

    #@6
    if-gez v0, :cond_9

    #@8
    return-void

    #@9
    .line 521
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const/4 v1, 0x2

    #@c
    new-array v1, v1, [Ljava/lang/Object;

    #@e
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@10
    .line 522
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x0

    #@15
    aput-object v2, v1, v3

    #@17
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@19
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x1

    #@1e
    aput-object v2, v1, v3

    #@20
    const-string v2, "valueFrom(%s) must be smaller than valueTo(%s)"

    #@22
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
.end method

.method private validateValueTo()V
    .registers 5

    #@0
    .line 527
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@4
    cmpg-float v0, v0, v1

    #@6
    if-lez v0, :cond_9

    #@8
    return-void

    #@9
    .line 528
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const/4 v1, 0x2

    #@c
    new-array v1, v1, [Ljava/lang/Object;

    #@e
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@10
    .line 529
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x0

    #@15
    aput-object v2, v1, v3

    #@17
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@19
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x1

    #@1e
    aput-object v2, v1, v3

    #@20
    const-string v2, "valueTo(%s) must be greater than valueFrom(%s)"

    #@22
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
.end method

.method private validateValues()V
    .registers 9

    #@0
    .line 557
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_85

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/Float;

    #@12
    .line 558
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@15
    move-result v2

    #@16
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@18
    cmpg-float v2, v2, v3

    #@1a
    const/4 v3, 0x2

    #@1b
    const/4 v4, 0x1

    #@1c
    const/4 v5, 0x0

    #@1d
    const/4 v6, 0x3

    #@1e
    if-ltz v2, :cond_65

    #@20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@23
    move-result v2

    #@24
    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@26
    cmpl-float v2, v2, v7

    #@28
    if-gtz v2, :cond_65

    #@2a
    .line 562
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@2c
    const/4 v7, 0x0

    #@2d
    cmpl-float v2, v2, v7

    #@2f
    if-lez v2, :cond_6

    #@31
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@34
    move-result v2

    #@35
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->valueLandsOnTick(F)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_3c

    #@3b
    goto :goto_6

    #@3c
    .line 563
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    #@3e
    const/4 v2, 0x4

    #@3f
    new-array v2, v2, [Ljava/lang/Object;

    #@41
    aput-object v1, v2, v5

    #@43
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@45
    .line 564
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@48
    move-result-object v1

    #@49
    aput-object v1, v2, v4

    #@4b
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@4d
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@50
    move-result-object v1

    #@51
    aput-object v1, v2, v3

    #@53
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@55
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@58
    move-result-object v1

    #@59
    aput-object v1, v2, v6

    #@5b
    const-string v1, "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

    #@5d
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@64
    throw v0

    #@65
    .line 559
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    #@67
    new-array v2, v6, [Ljava/lang/Object;

    #@69
    aput-object v1, v2, v5

    #@6b
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@6d
    .line 560
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@70
    move-result-object v1

    #@71
    aput-object v1, v2, v4

    #@73
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@75
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@78
    move-result-object v1

    #@79
    aput-object v1, v2, v3

    #@7b
    const-string v1, "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

    #@7d
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@84
    throw v0

    #@85
    :cond_85
    return-void
.end method

.method private valueLandsOnTick(F)Z
    .registers 3

    #@0
    .line 535
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@2
    sub-float/2addr p1, v0

    #@3
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->isMultipleOfStepSize(F)Z

    #@6
    move-result p1

    #@7
    return p1
.end method

.method private valueToX(F)F
    .registers 3

    #@0
    .line 2096
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    #@3
    move-result p1

    #@4
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@6
    int-to-float v0, v0

    #@7
    mul-float/2addr p1, v0

    #@8
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@a
    int-to-float v0, v0

    #@b
    add-float/2addr p1, v0

    #@c
    return p1
.end method

.method private warnAboutFloatingPointError()V
    .registers 9

    #@0
    .line 590
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v1, v0, v1

    #@5
    if-nez v1, :cond_8

    #@7
    return-void

    #@8
    :cond_8
    float-to-int v1, v0

    #@9
    int-to-float v1, v1

    #@a
    cmpl-float v1, v1, v0

    #@c
    const/4 v2, 0x1

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x2

    #@f
    const-string v5, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."

    #@11
    if-eqz v1, :cond_28

    #@13
    .line 596
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    #@15
    new-array v6, v4, [Ljava/lang/Object;

    #@17
    const-string v7, "stepSize"

    #@19
    aput-object v7, v6, v3

    #@1b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1e
    move-result-object v0

    #@1f
    aput-object v0, v6, v2

    #@21
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 599
    :cond_28
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@2a
    float-to-int v1, v0

    #@2b
    int-to-float v1, v1

    #@2c
    cmpl-float v1, v1, v0

    #@2e
    if-eqz v1, :cond_45

    #@30
    .line 600
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    #@32
    new-array v6, v4, [Ljava/lang/Object;

    #@34
    const-string v7, "valueFrom"

    #@36
    aput-object v7, v6, v3

    #@38
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3b
    move-result-object v0

    #@3c
    aput-object v0, v6, v2

    #@3e
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 603
    :cond_45
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@47
    float-to-int v1, v0

    #@48
    int-to-float v1, v1

    #@49
    cmpl-float v1, v1, v0

    #@4b
    if-eqz v1, :cond_62

    #@4d
    .line 604
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    #@4f
    new-array v4, v4, [Ljava/lang/Object;

    #@51
    const-string v6, "valueTo"

    #@53
    aput-object v6, v4, v3

    #@55
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@58
    move-result-object v0

    #@59
    aput-object v0, v4, v2

    #@5b
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    :cond_62
    return-void
.end method


# virtual methods
.method public addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    #@0
    .line 939
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 962
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public clearOnChangeListeners()V
    .registers 2

    #@0
    .line 953
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    return-void
.end method

.method public clearOnSliderTouchListeners()V
    .registers 2

    #@0
    .line 976
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    .line 2573
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_11

    #@8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@b
    move-result p1

    #@c
    if-eqz p1, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 p1, 0x1

    #@12
    :goto_12
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    #@0
    .line 2580
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method protected drawableStateChanged()V
    .registers 4

    #@0
    .line 2322
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    #@3
    .line 2324
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    #@5
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    #@7
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@e
    .line 2325
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    #@10
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    #@12
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@19
    .line 2326
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    #@1b
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    #@1d
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    #@20
    move-result v1

    #@21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@24
    .line 2327
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    #@26
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    #@28
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    #@2b
    move-result v1

    #@2c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@2f
    .line 2328
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v0

    #@35
    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_4f

    #@3b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@41
    .line 2329
    invoke-virtual {v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->isStateful()Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_35

    #@47
    .line 2330
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v1, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setState([I)Z

    #@4e
    goto :goto_35

    #@4f
    .line 2333
    :cond_4f
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@51
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_60

    #@57
    .line 2334
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@59
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setState([I)Z

    #@60
    .line 2336
    :cond_60
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    #@62
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    #@64
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    #@67
    move-result v1

    #@68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@6b
    .line 2337
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    #@6d
    const/16 v1, 0x3f

    #@6f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@72
    return-void
.end method

.method forceDrawCompatHalo(Z)V
    .registers 2

    #@0
    .line 2347
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    #@2
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 2568
    const-class v0, Landroid/widget/SeekBar;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method final getAccessibilityFocusedVirtualViewId()I
    .registers 2

    #@0
    .line 2562
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->getAccessibilityFocusedVirtualViewId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getActiveThumbIndex()I
    .registers 2

    #@0
    .line 929
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@2
    return v0
.end method

.method public getFocusedThumbIndex()I
    .registers 2

    #@0
    .line 910
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@2
    return v0
.end method

.method public getHaloRadius()I
    .registers 2

    #@0
    .line 1178
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    #@2
    return v0
.end method

.method public getHaloTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1316
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getLabelBehavior()I
    .registers 2

    #@0
    .line 1220
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    #@2
    return v0
.end method

.method protected getMinSeparation()F
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getStepSize()F
    .registers 2

    #@0
    .line 785
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@2
    return v0
.end method

.method public getThumbElevation()F
    .registers 2

    #@0
    .line 1005
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getThumbRadius()I
    .registers 2

    #@0
    .line 1040
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@2
    return v0
.end method

.method public getThumbStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1125
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getThumbStrokeWidth()F
    .registers 2

    #@0
    .line 1166
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeWidth()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1350
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTickActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1413
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1442
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTickTintList()Landroid/content/res/ColorStateList;
    .registers 3

    #@0
    .line 1382
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    #@2
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 1387
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    #@c
    return-object v0

    #@d
    .line 1383
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@f
    const-string v1, "The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1529
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTrackHeight()I
    .registers 2

    #@0
    .line 1267
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    #@2
    return v0
.end method

.method public getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 1558
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTrackSidePadding()I
    .registers 2

    #@0
    .line 1250
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@2
    return v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 3

    #@0
    .line 1498
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    #@2
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_d

    #@a
    .line 1503
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    #@c
    return-object v0

    #@d
    .line 1499
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@f
    const-string v1, "The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public getTrackWidth()I
    .registers 2

    #@0
    .line 1256
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@2
    return v0
.end method

.method public getValueFrom()F
    .registers 2

    #@0
    .line 627
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@2
    return v0
.end method

.method public getValueTo()F
    .registers 2

    #@0
    .line 653
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@2
    return v0
.end method

.method getValues()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    #@0
    .line 674
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public hasLabelFormatter()Z
    .registers 2

    #@0
    .line 984
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method final isRtl()Z
    .registers 3

    #@0
    .line 2443
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_8

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v1, 0x0

    #@9
    :goto_9
    return v1
.end method

.method public isTickVisible()Z
    .registers 2

    #@0
    .line 1468
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    #@0
    .line 1603
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@3
    .line 1605
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_19

    #@f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@15
    .line 1606
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    #@18
    goto :goto_9

    #@19
    :cond_19
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    #@0
    .line 1616
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1617
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 1620
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    #@a
    .line 1621
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v0

    #@10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_20

    #@16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@1c
    .line 1622
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    #@1f
    goto :goto_10

    #@20
    .line 1625
    :cond_20
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@23
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    #@0
    .line 1705
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 1706
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    #@7
    .line 1709
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    #@a
    .line 1712
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@d
    .line 1714
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTrackCenter()I

    #@10
    move-result v0

    #@11
    .line 1716
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@13
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->drawInactiveTrack(Landroid/graphics/Canvas;II)V

    #@16
    .line 1717
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Ljava/lang/Float;

    #@20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@23
    move-result v1

    #@24
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@26
    cmpl-float v1, v1, v2

    #@28
    if-lez v1, :cond_2f

    #@2a
    .line 1718
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@2c
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->drawActiveTrack(Landroid/graphics/Canvas;II)V

    #@2f
    .line 1721
    :cond_2f
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->maybeDrawTicks(Landroid/graphics/Canvas;)V

    #@32
    .line 1723
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    #@34
    if-nez v1, :cond_3c

    #@36
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isFocused()Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_47

    #@3c
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_47

    #@42
    .line 1724
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@44
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->maybeDrawCompatHalo(Landroid/graphics/Canvas;II)V

    #@47
    .line 1728
    :cond_47
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@49
    const/4 v2, -0x1

    #@4a
    if-ne v1, v2, :cond_52

    #@4c
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldAlwaysShowLabel()Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_5c

    #@52
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    #@55
    move-result v1

    #@56
    if-eqz v1, :cond_5c

    #@58
    .line 1729
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsAdded()V

    #@5b
    goto :goto_5f

    #@5c
    .line 1731
    :cond_5c
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    #@5f
    .line 1734
    :goto_5f
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@61
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->drawThumbs(Landroid/graphics/Canvas;II)V

    #@64
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    #@0
    .line 2529
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    if-nez p1, :cond_10

    #@5
    const/4 p1, -0x1

    #@6
    .line 2531
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@8
    .line 2532
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    #@a
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@c
    invoke-virtual {p1, p2}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->clearKeyboardFocusForVirtualView(I)Z

    #@f
    goto :goto_1a

    #@10
    .line 2534
    :cond_10
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->focusThumbOnFocusGained(I)V

    #@13
    .line 2535
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    #@15
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@17
    invoke-virtual {p1, p2}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    #@1a
    :goto_1a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    #@0
    .line 2352
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    .line 2353
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@9
    move-result p1

    #@a
    return p1

    #@b
    .line 2357
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    const/4 v1, 0x0

    #@12
    const/4 v2, 0x1

    #@13
    if-ne v0, v2, :cond_17

    #@15
    .line 2358
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@17
    .line 2362
    :cond_17
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@19
    const/4 v3, -0x1

    #@1a
    if-ne v0, v3, :cond_2c

    #@1c
    .line 2363
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDownNoActiveThumb(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_27

    #@22
    .line 2364
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@25
    move-result p1

    #@26
    goto :goto_2b

    #@27
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@2a
    move-result p1

    #@2b
    :goto_2b
    return p1

    #@2c
    .line 2367
    :cond_2c
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    #@2e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    #@31
    move-result v4

    #@32
    or-int/2addr v0, v4

    #@33
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    #@35
    .line 2368
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->calculateIncrementForKey(I)Ljava/lang/Float;

    #@38
    move-result-object v0

    #@39
    if-eqz v0, :cond_5b

    #@3b
    .line 2370
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@3d
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@3f
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object p1

    #@43
    check-cast p1, Ljava/lang/Float;

    #@45
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@48
    move-result p1

    #@49
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@4c
    move-result p2

    #@4d
    add-float/2addr p1, p2

    #@4e
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->snapActiveThumbToValue(F)Z

    #@51
    move-result p1

    #@52
    if-eqz p1, :cond_5a

    #@54
    .line 2371
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    #@57
    .line 2372
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@5a
    :cond_5a
    return v2

    #@5b
    :cond_5b
    const/16 v0, 0x17

    #@5d
    if-eq p1, v0, :cond_83

    #@5f
    const/16 v0, 0x3d

    #@61
    if-eq p1, v0, :cond_6c

    #@63
    const/16 v0, 0x42

    #@65
    if-eq p1, v0, :cond_83

    #@67
    .line 2395
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@6a
    move-result p1

    #@6b
    return p1

    #@6c
    .line 2378
    :cond_6c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@6f
    move-result p1

    #@70
    if-eqz p1, :cond_77

    #@72
    .line 2379
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    #@75
    move-result p1

    #@76
    return p1

    #@77
    .line 2382
    :cond_77
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    #@7a
    move-result p1

    #@7b
    if-eqz p1, :cond_82

    #@7d
    .line 2383
    invoke-direct {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    #@80
    move-result p1

    #@81
    return p1

    #@82
    :cond_82
    return v1

    #@83
    .line 2388
    :cond_83
    iput v3, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@85
    .line 2389
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@88
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 2438
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    #@3
    .line 2439
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@6
    move-result p1

    #@7
    return p1
.end method

.method protected onMeasure(II)V
    .registers 6

    #@0
    .line 1638
    iget p2, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    #@2
    .line 1642
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-eq v0, v1, :cond_e

    #@8
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldAlwaysShowLabel()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1a

    #@e
    .line 1643
    :cond_e
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@16
    invoke-virtual {v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    #@19
    move-result v2

    #@1a
    :cond_1a
    add-int/2addr p2, v2

    #@1b
    const/high16 v0, 0x40000000    # 2.0f

    #@1d
    .line 1640
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@20
    move-result p2

    #@21
    .line 1638
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    #@24
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 2627
    check-cast p1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    #@2
    .line 2628
    invoke-virtual {p1}, Lcom/google/android/material/slider/BaseSlider$SliderState;->getSuperState()Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@9
    .line 2630
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    #@b
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@d
    .line 2631
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    #@f
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@11
    .line 2632
    iget-object v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    #@13
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    #@16
    .line 2633
    iget v0, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    #@18
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@1a
    .line 2634
    iget-boolean p1, p1, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    #@1c
    if-eqz p1, :cond_21

    #@1e
    .line 2635
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestFocus()Z

    #@21
    :cond_21
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    #@0
    .line 2615
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 2616
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    #@6
    invoke-direct {v1, v0}, Lcom/google/android/material/slider/BaseSlider$SliderState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 2617
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@b
    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    #@d
    .line 2618
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@f
    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    #@11
    .line 2619
    new-instance v0, Ljava/util/ArrayList;

    #@13
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@15
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@18
    iput-object v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    #@1a
    .line 2620
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@1c
    iput v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    #@1e
    .line 2621
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->hasFocus()Z

    #@21
    move-result v0

    #@22
    iput-boolean v0, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    #@24
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    #@0
    .line 1650
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->updateTrackWidth(I)V

    #@3
    .line 1651
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    #@6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    .line 1867
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 1870
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@b
    move-result v0

    #@c
    .line 1871
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@e
    int-to-float v2, v2

    #@f
    sub-float v2, v0, v2

    #@11
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@13
    int-to-float v3, v3

    #@14
    div-float/2addr v2, v3

    #@15
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    #@17
    const/4 v3, 0x0

    #@18
    .line 1872
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    #@1b
    move-result v2

    #@1c
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    #@1e
    const/high16 v3, 0x3f800000    # 1.0f

    #@20
    .line 1873
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    #@23
    move-result v2

    #@24
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    #@26
    .line 1875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@29
    move-result v2

    #@2a
    const/4 v3, 0x1

    #@2b
    if-eqz v2, :cond_c1

    #@2d
    if-eq v2, v3, :cond_6f

    #@2f
    const/4 v4, 0x2

    #@30
    if-eq v2, v4, :cond_37

    #@32
    const/4 v0, 0x3

    #@33
    if-eq v2, v0, :cond_6f

    #@35
    goto/16 :goto_e9

    #@37
    .line 1900
    :cond_37
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    #@39
    if-nez v2, :cond_5a

    #@3b
    .line 1902
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->isInVerticalScrollingContainer()Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_50

    #@41
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchDownX:F

    #@43
    sub-float/2addr v0, v2

    #@44
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@47
    move-result v0

    #@48
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    #@4a
    int-to-float v2, v2

    #@4b
    cmpg-float v0, v0, v2

    #@4d
    if-gez v0, :cond_50

    #@4f
    return v1

    #@50
    .line 1905
    :cond_50
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    #@53
    move-result-object v0

    #@54
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@57
    .line 1906
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    #@5a
    .line 1909
    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    #@5d
    move-result v0

    #@5e
    if-nez v0, :cond_62

    #@60
    goto/16 :goto_e9

    #@62
    .line 1914
    :cond_62
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    #@64
    .line 1915
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    #@67
    .line 1916
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    #@6a
    .line 1917
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    #@6d
    goto/16 :goto_e9

    #@6f
    .line 1921
    :cond_6f
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    #@71
    .line 1923
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    #@73
    if-eqz v0, :cond_b0

    #@75
    .line 1924
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    #@78
    move-result v0

    #@79
    if-nez v0, :cond_b0

    #@7b
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    #@7d
    .line 1925
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    #@80
    move-result v0

    #@81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@84
    move-result v1

    #@85
    sub-float/2addr v0, v1

    #@86
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@89
    move-result v0

    #@8a
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    #@8c
    int-to-float v1, v1

    #@8d
    cmpg-float v0, v0, v1

    #@8f
    if-gtz v0, :cond_b0

    #@91
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    #@93
    .line 1926
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    #@96
    move-result v0

    #@97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@9a
    move-result v1

    #@9b
    sub-float/2addr v0, v1

    #@9c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@9f
    move-result v0

    #@a0
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    #@a2
    int-to-float v1, v1

    #@a3
    cmpg-float v0, v0, v1

    #@a5
    if-gtz v0, :cond_b0

    #@a7
    .line 1927
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    #@aa
    move-result v0

    #@ab
    if-eqz v0, :cond_b0

    #@ad
    .line 1928
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    #@b0
    .line 1932
    :cond_b0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@b2
    const/4 v1, -0x1

    #@b3
    if-eq v0, v1, :cond_bd

    #@b5
    .line 1933
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    #@b8
    .line 1934
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@ba
    .line 1935
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStopTrackingTouch()V

    #@bd
    .line 1937
    :cond_bd
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    #@c0
    goto :goto_e9

    #@c1
    .line 1877
    :cond_c1
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchDownX:F

    #@c3
    .line 1881
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->isInVerticalScrollingContainer()Z

    #@c6
    move-result v0

    #@c7
    if-eqz v0, :cond_ca

    #@c9
    goto :goto_e9

    #@ca
    .line 1885
    :cond_ca
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    #@cd
    move-result-object v0

    #@ce
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@d1
    .line 1887
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    #@d4
    move-result v0

    #@d5
    if-nez v0, :cond_d8

    #@d7
    goto :goto_e9

    #@d8
    .line 1892
    :cond_d8
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestFocus()Z

    #@db
    .line 1893
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    #@dd
    .line 1894
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    #@e0
    .line 1895
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    #@e3
    .line 1896
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    #@e6
    .line 1897
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    #@e9
    .line 1944
    :goto_e9
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    #@eb
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setPressed(Z)V

    #@ee
    .line 1946
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@f1
    move-result-object p1

    #@f2
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    #@f4
    return v3
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    #@0
    .line 1579
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    if-eqz p2, :cond_22

    #@5
    .line 1583
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    #@8
    move-result-object p1

    #@9
    if-nez p1, :cond_c

    #@b
    return-void

    #@c
    .line 1587
    :cond_c
    iget-object p2, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    #@e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object p2

    #@12
    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_22

    #@18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    #@1e
    .line 1588
    invoke-interface {p1, v0}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    #@21
    goto :goto_12

    #@22
    :cond_22
    return-void
.end method

.method protected pickActiveThumb()Z
    .registers 12

    #@0
    .line 1976
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, -0x1

    #@4
    if-eq v0, v2, :cond_7

    #@6
    return v1

    #@7
    .line 1980
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueOfTouchPositionAbsolute()F

    #@a
    move-result v0

    #@b
    .line 1981
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->valueToX(F)F

    #@e
    move-result v3

    #@f
    const/4 v4, 0x0

    #@10
    .line 1982
    iput v4, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@12
    .line 1983
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    check-cast v5, Ljava/lang/Float;

    #@1a
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    #@1d
    move-result v5

    #@1e
    sub-float/2addr v5, v0

    #@1f
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    #@22
    move-result v5

    #@23
    move v6, v1

    #@24
    .line 1984
    :goto_24
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v7

    #@2a
    if-ge v6, v7, :cond_91

    #@2c
    .line 1985
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v7

    #@32
    check-cast v7, Ljava/lang/Float;

    #@34
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    #@37
    move-result v7

    #@38
    sub-float/2addr v7, v0

    #@39
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    #@3c
    move-result v7

    #@3d
    .line 1986
    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v8

    #@43
    check-cast v8, Ljava/lang/Float;

    #@45
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    #@48
    move-result v8

    #@49
    invoke-direct {p0, v8}, Lcom/google/android/material/slider/BaseSlider;->valueToX(F)F

    #@4c
    move-result v8

    #@4d
    .line 1987
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    #@50
    move-result v9

    #@51
    if-le v9, v1, :cond_54

    #@53
    goto :goto_91

    #@54
    .line 1991
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    #@57
    move-result v9

    #@58
    const/4 v10, 0x0

    #@59
    if-eqz v9, :cond_62

    #@5b
    sub-float v9, v8, v3

    #@5d
    cmpl-float v9, v9, v10

    #@5f
    if-lez v9, :cond_6a

    #@61
    goto :goto_68

    #@62
    :cond_62
    sub-float v9, v8, v3

    #@64
    cmpg-float v9, v9, v10

    #@66
    if-gez v9, :cond_6a

    #@68
    :goto_68
    move v9, v1

    #@69
    goto :goto_6b

    #@6a
    :cond_6a
    move v9, v4

    #@6b
    .line 1994
    :goto_6b
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    #@6e
    move-result v10

    #@6f
    if-gez v10, :cond_74

    #@71
    .line 1996
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@73
    goto :goto_8d

    #@74
    .line 2000
    :cond_74
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    #@77
    move-result v10

    #@78
    if-nez v10, :cond_8e

    #@7a
    sub-float/2addr v8, v3

    #@7b
    .line 2002
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    #@7e
    move-result v8

    #@7f
    iget v10, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    #@81
    int-to-float v10, v10

    #@82
    cmpg-float v8, v8, v10

    #@84
    if-gez v8, :cond_89

    #@86
    .line 2003
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@88
    return v4

    #@89
    :cond_89
    if-eqz v9, :cond_8e

    #@8b
    .line 2009
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@8d
    :goto_8d
    move v5, v7

    #@8e
    :cond_8e
    add-int/lit8 v6, v6, 0x1

    #@90
    goto :goto_24

    #@91
    .line 2014
    :cond_91
    :goto_91
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@93
    if-eq v0, v2, :cond_96

    #@95
    goto :goto_97

    #@96
    :cond_96
    move v1, v4

    #@97
    :goto_97
    return v1
.end method

.method public removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    #@0
    .line 948
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .line 971
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method protected setActiveThumbIndex(I)V
    .registers 2

    #@0
    .line 924
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    #@2
    return-void
.end method

.method setCustomThumbDrawable(I)V
    .registers 3

    #@0
    .line 829
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 843
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->initializeCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    .line 844
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    #@8
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@b
    .line 845
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@e
    return-void
.end method

.method varargs setCustomThumbDrawablesForValues([I)V
    .registers 6

    #@0
    .line 861
    array-length v0, p1

    #@1
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    #@3
    const/4 v1, 0x0

    #@4
    .line 862
    :goto_4
    array-length v2, p1

    #@5
    if-ge v1, v2, :cond_16

    #@7
    .line 863
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v2

    #@b
    aget v3, p1, v1

    #@d
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v0, v1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_4

    #@16
    .line 865
    :cond_16
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V

    #@19
    return-void
.end method

.method varargs setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 881
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    .line 882
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    #@a
    .line 883
    array-length v0, p1

    #@b
    const/4 v1, 0x0

    #@c
    :goto_c
    if-ge v1, v0, :cond_1c

    #@e
    aget-object v2, p1, v1

    #@10
    .line 884
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    #@12
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->initializeCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_c

    #@1c
    .line 886
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@1f
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    #@0
    .line 1595
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    #@3
    if-eqz p1, :cond_7

    #@5
    const/4 p1, 0x0

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p1, 0x2

    #@8
    :goto_8
    const/4 v0, 0x0

    #@9
    .line 1598
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/slider/BaseSlider;->setLayerType(ILandroid/graphics/Paint;)V

    #@c
    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .registers 3

    #@0
    if-ltz p1, :cond_15

    #@2
    .line 915
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-ge p1, v0, :cond_15

    #@a
    .line 918
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    #@c
    .line 919
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    #@e
    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    #@11
    .line 920
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@14
    return-void

    #@15
    .line 916
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@17
    const-string v0, "index out of range"

    #@19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw p1
.end method

.method public setHaloRadius(I)V
    .registers 3

    #@0
    .line 1188
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 1192
    :cond_5
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    #@7
    .line 1193
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object p1

    #@b
    .line 1194
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1d

    #@11
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    #@13
    if-eqz v0, :cond_1d

    #@15
    .line 1195
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    #@17
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    #@19
    invoke-static {p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V

    #@1c
    return-void

    #@1d
    .line 1199
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@20
    return-void
.end method

.method public setHaloRadiusResource(I)V
    .registers 3

    #@0
    .line 1209
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    #@b
    return-void
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    #@0
    .line 1326
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 1330
    :cond_9
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    #@b
    .line 1331
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v0

    #@f
    .line 1332
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1f

    #@15
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    #@17
    if-eqz v1, :cond_1f

    #@19
    .line 1333
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    #@1b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    #@1e
    return-void

    #@1f
    .line 1337
    :cond_1f
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    #@21
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    #@24
    move-result p1

    #@25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@28
    .line 1338
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    #@2a
    const/16 v0, 0x3f

    #@2c
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    #@2f
    .line 1339
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    #@32
    return-void
.end method

.method public setLabelBehavior(I)V
    .registers 3

    #@0
    .line 1231
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1232
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    #@6
    .line 1233
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestLayout()V

    #@9
    :cond_9
    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V
    .registers 2

    #@0
    .line 994
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    #@2
    return-void
.end method

.method protected setSeparationUnit(I)V
    .registers 2

    #@0
    .line 2076
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    #@2
    const/4 p1, 0x1

    #@3
    .line 2077
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    #@5
    .line 2078
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@8
    return-void
.end method

.method public setStepSize(F)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    const/4 v1, 0x1

    #@4
    if-ltz v0, :cond_14

    #@6
    .line 811
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@8
    cmpl-float v0, v0, p1

    #@a
    if-eqz v0, :cond_13

    #@c
    .line 812
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    #@e
    .line 813
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    #@10
    .line 814
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@13
    :cond_13
    return-void

    #@14
    .line 808
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const/4 v2, 0x3

    #@17
    new-array v2, v2, [Ljava/lang/Object;

    #@19
    const/4 v3, 0x0

    #@1a
    .line 809
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1d
    move-result-object p1

    #@1e
    aput-object p1, v2, v3

    #@20
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@25
    move-result-object p1

    #@26
    aput-object p1, v2, v1

    #@28
    iget p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@2a
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2d
    move-result-object p1

    #@2e
    const/4 v1, 0x2

    #@2f
    aput-object p1, v2, v1

    #@31
    const-string p1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    #@33
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object p1

    #@37
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

.method public setThumbElevation(F)V
    .registers 3

    #@0
    .line 1015
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@5
    return-void
.end method

.method public setThumbElevationResource(I)V
    .registers 3

    #@0
    .line 1025
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    #@b
    return-void
.end method

.method public setThumbRadius(I)V
    .registers 5

    #@0
    .line 1053
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 1057
    :cond_5
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@7
    .line 1059
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@9
    .line 1060
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@c
    move-result-object v0

    #@d
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@f
    int-to-float v1, v1

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@18
    move-result-object v0

    #@19
    .line 1059
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@1c
    .line 1061
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1e
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@20
    mul-int/lit8 v1, v0, 0x2

    #@22
    mul-int/lit8 v0, v0, 0x2

    #@24
    invoke-virtual {p1, v2, v2, v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    #@27
    .line 1063
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@29
    if-eqz p1, :cond_2e

    #@2b
    .line 1064
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    #@2e
    .line 1066
    :cond_2e
    iget-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    #@30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object p1

    #@34
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_44

    #@3a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/graphics/drawable/Drawable;

    #@40
    .line 1067
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    #@43
    goto :goto_34

    #@44
    .line 1070
    :cond_44
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateWidgetLayout()V

    #@47
    return-void
.end method

.method public setThumbRadiusResource(I)V
    .registers 3

    #@0
    .line 1083
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    #@b
    return-void
.end method

.method public setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1096
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    #@5
    .line 1097
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@8
    return-void
.end method

.method public setThumbStrokeColorResource(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_d

    #@2
    .line 1112
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@9
    move-result-object p1

    #@a
    .line 1111
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    #@d
    :cond_d
    return-void
.end method

.method public setThumbStrokeWidth(F)V
    .registers 3

    #@0
    .line 1138
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    #@5
    .line 1139
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@8
    return-void
.end method

.method public setThumbStrokeWidthResource(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_d

    #@2
    .line 1153
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result p1

    #@a
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    #@d
    :cond_d
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1360
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    return-void

    #@d
    .line 1364
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@f
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@12
    .line 1365
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    #@15
    return-void
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1424
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 1427
    :cond_9
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    #@b
    .line 1428
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    #@d
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    #@10
    move-result p1

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@14
    .line 1429
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    #@17
    return-void
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1453
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 1456
    :cond_9
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    #@b
    .line 1457
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    #@d
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    #@10
    move-result p1

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@14
    .line 1458
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    #@17
    return-void
.end method

.method public setTickTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 1399
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    #@3
    .line 1400
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    #@6
    return-void
.end method

.method public setTickVisible(Z)V
    .registers 3

    #@0
    .line 1478
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 1479
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    #@6
    .line 1480
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@9
    :cond_9
    return-void
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1540
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 1543
    :cond_9
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    #@b
    .line 1544
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    #@d
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    #@10
    move-result p1

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@14
    .line 1545
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    #@17
    return-void
.end method

.method public setTrackHeight(I)V
    .registers 3

    #@0
    .line 1277
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    #@2
    if-eq v0, p1, :cond_c

    #@4
    .line 1278
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    #@6
    .line 1279
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidateTrack()V

    #@9
    .line 1280
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateWidgetLayout()V

    #@c
    :cond_c
    return-void
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 1569
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-void

    #@9
    .line 1572
    :cond_9
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    #@b
    .line 1573
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    #@d
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    #@10
    move-result p1

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@14
    .line 1574
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    #@17
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 1515
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    #@3
    .line 1516
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    #@6
    return-void
.end method

.method public setValueFrom(F)V
    .registers 2

    #@0
    .line 641
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    #@2
    const/4 p1, 0x1

    #@3
    .line 642
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    #@5
    .line 643
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@8
    return-void
.end method

.method public setValueTo(F)V
    .registers 2

    #@0
    .line 667
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    #@2
    const/4 p1, 0x1

    #@3
    .line 668
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    #@5
    .line 669
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    #@8
    return-void
.end method

.method setValues(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 714
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    #@8
    return-void
.end method

.method varargs setValues([Ljava/lang/Float;)V
    .registers 3

    #@0
    .line 693
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 694
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@8
    .line 695
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    #@b
    return-void
.end method

.method updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V
    .registers 7

    #@0
    .line 2691
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Ljava/lang/Float;

    #@c
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@f
    move-result p1

    #@10
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    #@13
    move-result p1

    #@14
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    #@16
    int-to-float v1, v1

    #@17
    mul-float/2addr p1, v1

    #@18
    float-to-int p1, p1

    #@19
    add-int/2addr v0, p1

    #@1a
    .line 2692
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTrackCenter()I

    #@1d
    move-result p1

    #@1e
    .line 2694
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    #@20
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->minTouchTargetSize:I

    #@22
    if-le v1, v2, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    move v1, v2

    #@26
    :goto_26
    div-int/lit8 v1, v1, 0x2

    #@28
    sub-int v2, v0, v1

    #@2a
    sub-int v3, p1, v1

    #@2c
    add-int/2addr v0, v1

    #@2d
    add-int/2addr p1, v1

    #@2e
    .line 2696
    invoke-virtual {p2, v2, v3, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    #@31
    return-void
.end method
