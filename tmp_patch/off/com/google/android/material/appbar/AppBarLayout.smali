.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;,
        Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;,
        Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
        Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;,
        Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;,
        Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private final appBarElevation:F

.field private behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

.field private currentOffset:I

.field private downPreScrollRange:I

.field private downScrollRange:I

.field private haveChildWithInterpolator:Z

.field private lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private liftOnScroll:Z

.field private final liftOnScrollColor:Landroid/content/res/ColorStateList;

.field private liftOnScrollColorAnimator:Landroid/animation/ValueAnimator;

.field private final liftOnScrollColorDuration:J

.field private final liftOnScrollColorInterpolator:Landroid/animation/TimeInterpolator;

.field private liftOnScrollColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final liftOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private liftOnScrollTargetView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private liftOnScrollTargetViewId:I

.field private liftable:Z

.field private liftableOverride:Z

.field private lifted:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:I

.field private statusBarForeground:Landroid/graphics/drawable/Drawable;

.field private tmpStatesArray:[I

.field private totalScrollRange:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 185
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_AppBarLayout:I

    #@2
    sput v0, Lcom/google/android/material/appbar/AppBarLayout;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 225
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 229
    sget v0, Lcom/google/android/material/R$attr;->appBarLayoutStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    #@0
    .line 233
    sget v4, Lcom/google/android/material/appbar/AppBarLayout;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    const/4 p1, -0x1

    #@a
    .line 189
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    #@c
    .line 190
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    #@e
    .line 191
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    #@10
    const/4 v6, 0x0

    #@11
    .line 195
    iput v6, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    #@13
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    #@1a
    .line 235
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v7

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 236
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setOrientation(I)V

    #@22
    .line 241
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    #@25
    move-result-object v0

    #@26
    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    #@28
    if-ne v0, v1, :cond_2d

    #@2a
    .line 242
    invoke-static {p0}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    #@2d
    .line 247
    :cond_2d
    invoke-static {p0, p2, p3, v4}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    #@30
    .line 250
    sget-object v2, Lcom/google/android/material/R$styleable;->AppBarLayout:[I

    #@32
    new-array v5, v6, [I

    #@34
    move-object v0, v7

    #@35
    move-object v1, p2

    #@36
    move v3, p3

    #@37
    .line 251
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@3a
    move-result-object p2

    #@3b
    .line 254
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_android_background:I

    #@3d
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@40
    move-result-object p3

    #@41
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@44
    .line 256
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScrollColor:I

    #@46
    .line 257
    invoke-static {v7, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@49
    move-result-object p3

    #@4a
    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColor:Landroid/content/res/ColorStateList;

    #@4c
    .line 260
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4f
    move-result-object v0

    #@50
    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    #@52
    if-eqz v0, :cond_76

    #@54
    .line 261
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    #@5a
    .line 262
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@5c
    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@5f
    .line 263
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@62
    move-result v0

    #@63
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@6a
    if-eqz p3, :cond_70

    #@6c
    .line 267
    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->initializeLiftOnScrollWithColor(Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    #@6f
    goto :goto_73

    #@70
    .line 269
    :cond_70
    invoke-direct {p0, v7, v1}, Lcom/google/android/material/appbar/AppBarLayout;->initializeLiftOnScrollWithElevation(Landroid/content/Context;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    #@73
    .line 271
    :goto_73
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@76
    .line 274
    :cond_76
    sget p3, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    #@78
    .line 276
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    #@7b
    move-result-object v0

    #@7c
    sget v1, Lcom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    #@7e
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@81
    move-result v0

    #@82
    .line 274
    invoke-static {v7, p3, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@85
    move-result p3

    #@86
    int-to-long v0, p3

    #@87
    iput-wide v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorDuration:J

    #@89
    .line 277
    sget p3, Lcom/google/android/material/R$attr;->motionEasingStandardInterpolator:I

    #@8b
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@8d
    invoke-static {v7, p3, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@90
    move-result-object p3

    #@91
    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorInterpolator:Landroid/animation/TimeInterpolator;

    #@93
    .line 280
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    #@95
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@98
    move-result p3

    #@99
    if-eqz p3, :cond_a4

    #@9b
    .line 281
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    #@9d
    .line 282
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a0
    move-result p3

    #@a1
    .line 281
    invoke-direct {p0, p3, v6, v6}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    #@a4
    .line 287
    :cond_a4
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    #@a6
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@a9
    move-result p3

    #@aa
    if-eqz p3, :cond_b6

    #@ac
    .line 288
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    #@ae
    .line 289
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@b1
    move-result p3

    #@b2
    int-to-float p3, p3

    #@b3
    .line 288
    invoke-static {p0, p3}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    #@b6
    .line 295
    :cond_b6
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    #@b8
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@bb
    move-result p3

    #@bc
    if-eqz p3, :cond_c7

    #@be
    .line 296
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    #@c0
    .line 297
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c3
    move-result p3

    #@c4
    .line 296
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    #@c7
    .line 299
    :cond_c7
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    #@c9
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@cc
    move-result p3

    #@cd
    if-eqz p3, :cond_d8

    #@cf
    .line 300
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    #@d1
    .line 301
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d4
    move-result p3

    #@d5
    .line 300
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    #@d8
    .line 306
    :cond_d8
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    #@db
    move-result-object p3

    #@dc
    sget v0, Lcom/google/android/material/R$dimen;->design_appbar_elevation:I

    #@de
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    #@e1
    move-result p3

    #@e2
    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->appBarElevation:F

    #@e4
    .line 308
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScroll:I

    #@e6
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@e9
    move-result p3

    #@ea
    iput-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    #@ec
    .line 309
    sget p3, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScrollTargetViewId:I

    #@ee
    .line 310
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@f1
    move-result p1

    #@f2
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    #@f4
    .line 312
    sget p1, Lcom/google/android/material/R$styleable;->AppBarLayout_statusBarForeground:I

    #@f6
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f9
    move-result-object p1

    #@fa
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    #@fd
    .line 313
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@100
    .line 315
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$1;

    #@102
    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout;)V

    #@105
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@108
    return-void
.end method

.method private clearLiftOnScrollTargetView()V
    .registers 2

    #@0
    .line 1099
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1100
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    .line 1102
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    #@a
    return-void
.end method

.method private findLiftOnScrollTargetView(Landroid/view/View;)Landroid/view/View;
    .registers 5

    #@0
    .line 1081
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_31

    #@5
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    #@7
    const/4 v2, -0x1

    #@8
    if-eq v0, v2, :cond_31

    #@a
    if-eqz p1, :cond_11

    #@c
    .line 1084
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@f
    move-result-object p1

    #@10
    goto :goto_12

    #@11
    :cond_11
    move-object p1, v1

    #@12
    :goto_12
    if-nez p1, :cond_28

    #@14
    .line 1086
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    #@17
    move-result-object v0

    #@18
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@1a
    if-eqz v0, :cond_28

    #@1c
    .line 1089
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    #@1f
    move-result-object p1

    #@20
    check-cast p1, Landroid/view/ViewGroup;

    #@22
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    #@24
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object p1

    #@28
    :cond_28
    if-eqz p1, :cond_31

    #@2a
    .line 1092
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2c
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@2f
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    #@31
    .line 1095
    :cond_31
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    #@33
    if-eqz p1, :cond_3c

    #@35
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@38
    move-result-object p1

    #@39
    move-object v1, p1

    #@3a
    check-cast v1, Landroid/view/View;

    #@3c
    :cond_3c
    return-object v1
.end method

.method private hasCollapsibleChild()Z
    .registers 5

    #@0
    .line 596
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_1d

    #@8
    .line 597
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@12
    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->isCollapsible()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1a

    #@18
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_6

    #@1d
    :cond_1d
    return v1
.end method

.method private initializeLiftOnScrollWithColor(Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .registers 3

    #@0
    .line 326
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    const/16 v0, 0xff

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setAlpha(I)V

    #@b
    .line 327
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColor:Landroid/content/res/ColorStateList;

    #@d
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@10
    .line 328
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;

    #@12
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    #@15
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@17
    return-void
.end method

.method private initializeLiftOnScrollWithElevation(Landroid/content/Context;Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .registers 3

    #@0
    .line 343
    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@3
    .line 344
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda1;

    #@5
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/appbar/AppBarLayout$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    #@8
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@a
    return-void
.end method

.method private invalidateScrollRanges()V
    .registers 4

    #@0
    .line 611
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    #@2
    const/4 v1, -0x1

    #@3
    if-eqz v0, :cond_15

    #@5
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    #@7
    if-eq v2, v1, :cond_15

    #@9
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    #@b
    if-eqz v2, :cond_e

    #@d
    goto :goto_15

    #@e
    .line 612
    :cond_e
    sget-object v2, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState;

    #@10
    invoke-virtual {v0, v2, p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->saveScrollState(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    #@13
    move-result-object v0

    #@14
    goto :goto_16

    #@15
    :cond_15
    :goto_15
    const/4 v0, 0x0

    #@16
    .line 614
    :goto_16
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    #@18
    .line 615
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    #@1a
    .line 616
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    #@1c
    if-eqz v0, :cond_24

    #@1e
    .line 622
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->restoreScrollState(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;Z)V

    #@24
    :cond_24
    return-void
.end method

.method private setExpanded(ZZZ)V
    .registers 5

    #@0
    if-eqz p1, :cond_4

    #@2
    const/4 p1, 0x1

    #@3
    goto :goto_5

    #@4
    :cond_4
    const/4 p1, 0x2

    #@5
    :goto_5
    const/4 v0, 0x0

    #@6
    if-eqz p2, :cond_a

    #@8
    const/4 p2, 0x4

    #@9
    goto :goto_b

    #@a
    :cond_a
    move p2, v0

    #@b
    :goto_b
    or-int/2addr p1, p2

    #@c
    if-eqz p3, :cond_10

    #@e
    const/16 v0, 0x8

    #@10
    :cond_10
    or-int/2addr p1, v0

    #@11
    .line 691
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    #@13
    .line 692
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    #@16
    return-void
.end method

.method private setLiftableState(Z)Z
    .registers 3

    #@0
    .line 961
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    #@2
    if-eq v0, p1, :cond_b

    #@4
    .line 962
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    #@6
    .line 963
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    #@9
    const/4 p1, 0x1

    #@a
    return p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return p1
.end method

.method private shouldDrawStatusBarForeground()Z
    .registers 2

    #@0
    .line 592
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@7
    move-result v0

    #@8
    if-lez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method private shouldOffsetFirstChild()Z
    .registers 5

    #@0
    .line 1146
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-lez v0, :cond_1a

    #@7
    .line 1147
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 1148
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v2

    #@f
    const/16 v3, 0x8

    #@11
    if-eq v2, v3, :cond_1a

    #@13
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1a

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_1a
    return v1
.end method

.method private startLiftOnScrollColorAnimation(FF)V
    .registers 5

    #@0
    .line 1008
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorAnimator:Landroid/animation/ValueAnimator;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1009
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@7
    :cond_7
    const/4 v0, 0x2

    #@8
    new-array v0, v0, [F

    #@a
    const/4 v1, 0x0

    #@b
    aput p1, v0, v1

    #@d
    const/4 p1, 0x1

    #@e
    aput p2, v0, p1

    #@10
    .line 1012
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@13
    move-result-object p1

    #@14
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorAnimator:Landroid/animation/ValueAnimator;

    #@16
    .line 1013
    iget-wide v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorDuration:J

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@1b
    .line 1014
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorAnimator:Landroid/animation/ValueAnimator;

    #@1d
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorInterpolator:Landroid/animation/TimeInterpolator;

    #@1f
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@22
    .line 1015
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    #@24
    if-eqz p1, :cond_2b

    #@26
    .line 1016
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorAnimator:Landroid/animation/ValueAnimator;

    #@28
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@2b
    .line 1018
    :cond_2b
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColorAnimator:Landroid/animation/ValueAnimator;

    #@2d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@30
    return-void
.end method

.method private updateWillNotDraw()V
    .registers 2

    #@0
    .line 588
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldDrawStatusBarForeground()Z

    #@3
    move-result v0

    #@4
    xor-int/lit8 v0, v0, 0x1

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setWillNotDraw(Z)V

    #@9
    return-void
.end method


# virtual methods
.method public addLiftOnScrollListener(Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;)V
    .registers 3

    #@0
    .line 401
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .registers 3

    #@0
    .line 364
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 365
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    #@b
    :cond_b
    if-eqz p1, :cond_1a

    #@d
    .line 367
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    #@f
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1a

    #@15
    .line 368
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    #@17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    :cond_1a
    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .registers 2

    #@0
    .line 374
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    #@3
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    #@0
    .line 697
    instance-of p1, p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@2
    return p1
.end method

.method public clearLiftOnScrollListener()V
    .registers 2

    #@0
    .line 411
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    #@0
    .line 482
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 485
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldDrawStatusBarForeground()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1d

    #@9
    .line 486
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@c
    move-result v0

    #@d
    .line 487
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    #@f
    neg-int v1, v1

    #@10
    int-to-float v1, v1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@15
    .line 488
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1a
    .line 489
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@1d
    :cond_1d
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 4

    #@0
    .line 495
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    #@3
    .line 497
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    #@6
    move-result-object v0

    #@7
    .line 499
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v1, :cond_1a

    #@b
    .line 500
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1a

    #@11
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1a

    #@17
    .line 501
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1a
    :cond_1a
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 141
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    #@0
    .line 141
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .registers 4

    #@0
    .line 702
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, -0x2

    #@4
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    #@7
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    #@0
    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    #@0
    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .registers 4

    #@0
    .line 707
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .registers 3

    #@0
    .line 712
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 713
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@6
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    #@8
    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    #@b
    return-object v0

    #@c
    .line 714
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz v0, :cond_18

    #@10
    .line 715
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@12
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@14
    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@17
    return-object v0

    #@18
    .line 717
    :cond_18
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@1a
    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    return-object v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/appbar/AppBarLayout;",
            ">;"
        }
    .end annotation

    #@0
    .line 645
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    #@5
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    #@7
    return-object v0
.end method

.method getDownNestedPreScrollRange()I
    .registers 10

    #@0
    .line 788
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_6

    #@5
    return v0

    #@6
    .line 794
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    const/4 v1, 0x0

    #@d
    move v2, v1

    #@e
    :goto_e
    if-ltz v0, :cond_62

    #@10
    .line 795
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@13
    move-result-object v3

    #@14
    .line 796
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@17
    move-result v4

    #@18
    const/16 v5, 0x8

    #@1a
    if-ne v4, v5, :cond_1d

    #@1c
    goto :goto_5f

    #@1d
    .line 800
    :cond_1d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@23
    .line 801
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@26
    move-result v5

    #@27
    .line 802
    iget v6, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    #@29
    and-int/lit8 v7, v6, 0x5

    #@2b
    const/4 v8, 0x5

    #@2c
    if-ne v7, v8, :cond_5c

    #@2e
    .line 806
    iget v7, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    #@30
    iget v4, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    #@32
    add-int/2addr v7, v4

    #@33
    and-int/lit8 v4, v6, 0x8

    #@35
    if-eqz v4, :cond_3d

    #@37
    .line 810
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@3a
    move-result v4

    #@3b
    :goto_3b
    add-int/2addr v7, v4

    #@3c
    goto :goto_49

    #@3d
    :cond_3d
    and-int/lit8 v4, v6, 0x2

    #@3f
    if-eqz v4, :cond_48

    #@41
    .line 813
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@44
    move-result v4

    #@45
    sub-int v4, v5, v4

    #@47
    goto :goto_3b

    #@48
    :cond_48
    add-int/2addr v7, v5

    #@49
    :goto_49
    if-nez v0, :cond_5a

    #@4b
    .line 818
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_5a

    #@51
    .line 821
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@54
    move-result v3

    #@55
    sub-int/2addr v5, v3

    #@56
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    #@59
    move-result v7

    #@5a
    :cond_5a
    add-int/2addr v2, v7

    #@5b
    goto :goto_5f

    #@5c
    :cond_5c
    if-lez v2, :cond_5f

    #@5e
    goto :goto_62

    #@5f
    :cond_5f
    :goto_5f
    add-int/lit8 v0, v0, -0x1

    #@61
    goto :goto_e

    #@62
    .line 830
    :cond_62
    :goto_62
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@65
    move-result v0

    #@66
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    #@68
    return v0
.end method

.method getDownNestedScrollRange()I
    .registers 10

    #@0
    .line 835
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_6

    #@5
    return v0

    #@6
    .line 841
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    move v2, v1

    #@c
    move v3, v2

    #@d
    :goto_d
    if-ge v2, v0, :cond_40

    #@f
    .line 842
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v4

    #@13
    .line 843
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v5

    #@17
    const/16 v6, 0x8

    #@19
    if-ne v5, v6, :cond_1c

    #@1b
    goto :goto_3d

    #@1c
    .line 847
    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@22
    .line 848
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@25
    move-result v6

    #@26
    .line 849
    iget v7, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    #@28
    iget v8, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    #@2a
    add-int/2addr v7, v8

    #@2b
    add-int/2addr v6, v7

    #@2c
    .line 851
    iget v5, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    #@2e
    and-int/lit8 v7, v5, 0x1

    #@30
    if-eqz v7, :cond_40

    #@32
    add-int/2addr v3, v6

    #@33
    and-int/lit8 v5, v5, 0x2

    #@35
    if-eqz v5, :cond_3d

    #@37
    .line 861
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@3a
    move-result v0

    #@3b
    sub-int/2addr v3, v0

    #@3c
    goto :goto_40

    #@3d
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_d

    #@40
    .line 870
    :cond_40
    :goto_40
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    #@43
    move-result v0

    #@44
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    #@46
    return v0
.end method

.method public getLiftOnScrollTargetViewId()I
    .registers 2

    #@0
    .line 1067
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    #@2
    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .registers 4

    #@0
    .line 893
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@3
    move-result v0

    #@4
    .line 894
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_e

    #@a
    :goto_a
    mul-int/lit8 v1, v1, 0x2

    #@c
    add-int/2addr v1, v0

    #@d
    return v1

    #@e
    .line 901
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    if-lt v1, v2, :cond_1f

    #@15
    sub-int/2addr v1, v2

    #@16
    .line 903
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@1d
    move-result v1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 v1, 0x0

    #@20
    :goto_20
    if-eqz v1, :cond_23

    #@22
    goto :goto_a

    #@23
    .line 910
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    #@26
    move-result v0

    #@27
    div-int/lit8 v0, v0, 0x3

    #@29
    return v0
.end method

.method getPendingAction()I
    .registers 2

    #@0
    .line 1129
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    #@2
    return v0
.end method

.method public getStatusBarForeground()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 477
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getTargetElevation()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method final getTopInset()I
    .registers 2

    #@0
    .line 1138
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return v0
.end method

.method public final getTotalScrollRange()I
    .registers 10

    #@0
    .line 737
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_6

    #@5
    return v0

    #@6
    .line 742
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    move v2, v1

    #@c
    move v3, v2

    #@d
    :goto_d
    if-ge v2, v0, :cond_4d

    #@f
    .line 743
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v4

    #@13
    .line 744
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v5

    #@17
    const/16 v6, 0x8

    #@19
    if-ne v5, v6, :cond_1c

    #@1b
    goto :goto_4a

    #@1c
    .line 748
    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@22
    .line 749
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@25
    move-result v6

    #@26
    .line 750
    iget v7, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    #@28
    and-int/lit8 v8, v7, 0x1

    #@2a
    if-eqz v8, :cond_4d

    #@2c
    .line 754
    iget v8, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    #@2e
    add-int/2addr v6, v8

    #@2f
    iget v5, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    #@31
    add-int/2addr v6, v5

    #@32
    add-int/2addr v3, v6

    #@33
    if-nez v2, :cond_40

    #@35
    .line 756
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_40

    #@3b
    .line 759
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@3e
    move-result v5

    #@3f
    sub-int/2addr v3, v5

    #@40
    :cond_40
    and-int/lit8 v5, v7, 0x2

    #@42
    if-eqz v5, :cond_4a

    #@44
    .line 765
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    #@47
    move-result v0

    #@48
    sub-int/2addr v3, v0

    #@49
    goto :goto_4d

    #@4a
    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_d

    #@4d
    .line 774
    :cond_4d
    :goto_4d
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    #@50
    move-result v0

    #@51
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    #@53
    return v0
.end method

.method getUpNestedPreScrollRange()I
    .registers 2

    #@0
    .line 783
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method hasChildWithInterpolator()Z
    .registers 2

    #@0
    .line 728
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    #@2
    return v0
.end method

.method hasScrollableChildren()Z
    .registers 2

    #@0
    .line 778
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method public isLiftOnScroll()Z
    .registers 2

    #@0
    .line 1035
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    #@2
    return v0
.end method

.method public isLifted()Z
    .registers 2

    #@0
    .line 980
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    #@2
    return v0
.end method

.method synthetic lambda$initializeLiftOnScrollWithColor$0$com-google-android-material-appbar-AppBarLayout(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/animation/ValueAnimator;)V
    .registers 7

    #@0
    .line 329
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p2

    #@4
    check-cast p2, Ljava/lang/Float;

    #@6
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p2

    #@a
    float-to-int p2, p2

    #@b
    .line 330
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setAlpha(I)V

    #@e
    .line 332
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v0

    #@14
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_37

    #@1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;

    #@20
    .line 333
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    #@23
    move-result-object v2

    #@24
    if-eqz v2, :cond_14

    #@26
    .line 335
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@31
    move-result v2

    #@32
    const/4 v3, 0x0

    #@33
    .line 334
    invoke-interface {v1, v3, v2}, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;->onUpdate(FI)V

    #@36
    goto :goto_14

    #@37
    :cond_37
    return-void
.end method

.method synthetic lambda$initializeLiftOnScrollWithElevation$1$com-google-android-material-appbar-AppBarLayout(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/animation/ValueAnimator;)V
    .registers 6

    #@0
    .line 345
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p2

    #@4
    check-cast p2, Ljava/lang/Float;

    #@6
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p2

    #@a
    .line 346
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@d
    .line 347
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@f
    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@11
    if-eqz v1, :cond_18

    #@13
    .line 348
    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@15
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@18
    .line 350
    :cond_18
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    #@1a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v0

    #@1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_32

    #@24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;

    #@2a
    .line 351
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getResolvedTintColor()I

    #@2d
    move-result v2

    #@2e
    invoke-interface {v1, p2, v2}, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;->onUpdate(FI)V

    #@31
    goto :goto_1e

    #@32
    :cond_32
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    #@0
    .line 637
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    #@3
    .line 639
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    #@6
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 5

    #@0
    .line 915
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    #@2
    if-nez v0, :cond_9

    #@4
    const/4 v0, 0x4

    #@5
    new-array v0, v0, [I

    #@7
    .line 918
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    #@9
    .line 920
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    #@b
    .line 921
    array-length v1, v0

    #@c
    add-int/2addr p1, v1

    #@d
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    #@10
    move-result-object p1

    #@11
    .line 923
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    #@13
    if-eqz v1, :cond_18

    #@15
    sget v1, Lcom/google/android/material/R$attr;->state_liftable:I

    #@17
    goto :goto_1b

    #@18
    :cond_18
    sget v1, Lcom/google/android/material/R$attr;->state_liftable:I

    #@1a
    neg-int v1, v1

    #@1b
    :goto_1b
    const/4 v2, 0x0

    #@1c
    aput v1, v0, v2

    #@1e
    .line 924
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    #@20
    if-eqz v1, :cond_29

    #@22
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    #@24
    if-eqz v1, :cond_29

    #@26
    sget v1, Lcom/google/android/material/R$attr;->state_lifted:I

    #@28
    goto :goto_2c

    #@29
    :cond_29
    sget v1, Lcom/google/android/material/R$attr;->state_lifted:I

    #@2b
    neg-int v1, v1

    #@2c
    :goto_2c
    const/4 v2, 0x1

    #@2d
    aput v1, v0, v2

    #@2f
    .line 928
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    #@31
    if-eqz v1, :cond_36

    #@33
    sget v1, Lcom/google/android/material/R$attr;->state_collapsible:I

    #@35
    goto :goto_39

    #@36
    :cond_36
    sget v1, Lcom/google/android/material/R$attr;->state_collapsible:I

    #@38
    neg-int v1, v1

    #@39
    :goto_39
    const/4 v2, 0x2

    #@3a
    aput v1, v0, v2

    #@3c
    .line 929
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    #@3e
    if-eqz v1, :cond_47

    #@40
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    #@42
    if-eqz v1, :cond_47

    #@44
    sget v1, Lcom/google/android/material/R$attr;->state_collapsed:I

    #@46
    goto :goto_4a

    #@47
    :cond_47
    sget v1, Lcom/google/android/material/R$attr;->state_collapsed:I

    #@49
    neg-int v1, v1

    #@4a
    :goto_4a
    const/4 v2, 0x3

    #@4b
    aput v1, v0, v2

    #@4d
    .line 931
    invoke-static {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->mergeDrawableStates([I[I)[I

    #@50
    move-result-object p1

    #@51
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    #@0
    .line 722
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    #@3
    .line 724
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    #@6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 553
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    #@3
    .line 555
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@6
    move-result p1

    #@7
    const/4 p2, 0x1

    #@8
    if-eqz p1, :cond_25

    #@a
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_25

    #@10
    .line 557
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@13
    move-result p1

    #@14
    .line 558
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@17
    move-result p3

    #@18
    sub-int/2addr p3, p2

    #@19
    :goto_19
    if-ltz p3, :cond_25

    #@1b
    .line 559
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object p4

    #@1f
    invoke-static {p4, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@22
    add-int/lit8 p3, p3, -0x1

    #@24
    goto :goto_19

    #@25
    .line 563
    :cond_25
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    #@28
    const/4 p1, 0x0

    #@29
    .line 565
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    #@2b
    .line 566
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    #@2e
    move-result p3

    #@2f
    move p4, p1

    #@30
    :goto_30
    if-ge p4, p3, :cond_48

    #@32
    .line 567
    invoke-virtual {p0, p4}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    #@35
    move-result-object p5

    #@36
    .line 568
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@39
    move-result-object p5

    #@3a
    check-cast p5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    #@3c
    .line 569
    invoke-virtual {p5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    #@3f
    move-result-object p5

    #@40
    if-eqz p5, :cond_45

    #@42
    .line 572
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    #@44
    goto :goto_48

    #@45
    :cond_45
    add-int/lit8 p4, p4, 0x1

    #@47
    goto :goto_30

    #@48
    .line 577
    :cond_48
    :goto_48
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@4a
    if-eqz p3, :cond_57

    #@4c
    .line 578
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getWidth()I

    #@4f
    move-result p4

    #@50
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@53
    move-result p5

    #@54
    invoke-virtual {p3, p1, p1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@57
    .line 582
    :cond_57
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    #@59
    if-nez p3, :cond_6a

    #@5b
    .line 583
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    #@5d
    if-nez p3, :cond_67

    #@5f
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->hasCollapsibleChild()Z

    #@62
    move-result p3

    #@63
    if-eqz p3, :cond_66

    #@65
    goto :goto_67

    #@66
    :cond_66
    move p2, p1

    #@67
    :cond_67
    :goto_67
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    #@6a
    :cond_6a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    #@0
    .line 522
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@3
    .line 526
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@6
    move-result p1

    #@7
    const/high16 v0, 0x40000000    # 2.0f

    #@9
    if-eq p1, v0, :cond_41

    #@b
    .line 528
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_41

    #@11
    .line 529
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_41

    #@17
    .line 530
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    #@1a
    move-result v0

    #@1b
    const/high16 v1, -0x80000000

    #@1d
    if-eq p1, v1, :cond_28

    #@1f
    if-eqz p1, :cond_22

    #@21
    goto :goto_3a

    #@22
    .line 540
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@25
    move-result p1

    #@26
    add-int/2addr v0, p1

    #@27
    goto :goto_3a

    #@28
    .line 536
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    #@2b
    move-result p1

    #@2c
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    #@2f
    move-result v0

    #@30
    add-int/2addr p1, v0

    #@31
    const/4 v0, 0x0

    #@32
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@35
    move-result p2

    #@36
    .line 535
    invoke-static {p1, v0, p2}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@39
    move-result v0

    #@3a
    .line 545
    :goto_3a
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredWidth()I

    #@3d
    move-result p1

    #@3e
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setMeasuredDimension(II)V

    #@41
    .line 548
    :cond_41
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    #@44
    return-void
.end method

.method onOffsetChanged(I)V
    .registers 5

    #@0
    .line 874
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    #@2
    .line 876
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->willNotDraw()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_b

    #@8
    .line 877
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@b
    .line 882
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    #@d
    if-eqz v0, :cond_26

    #@f
    .line 883
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@12
    move-result v0

    #@13
    const/4 v1, 0x0

    #@14
    :goto_14
    if-ge v1, v0, :cond_26

    #@16
    .line 884
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    #@18
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;

    #@1e
    if-eqz v2, :cond_23

    #@20
    .line 886
    invoke-interface {v2, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V

    #@23
    :cond_23
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_14

    #@26
    :cond_26
    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    #@0
    .line 1156
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    move-object v0, p1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 1162
    :goto_9
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@b
    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_19

    #@11
    .line 1163
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    #@13
    .line 1164
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->updateWillNotDraw()V

    #@16
    .line 1165
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    #@19
    :cond_19
    return-object p1
.end method

.method public removeLiftOnScrollListener(Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;)Z
    .registers 3

    #@0
    .line 406
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .registers 3

    #@0
    .line 386
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_9

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 387
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@9
    :cond_9
    return-void
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .registers 2

    #@0
    .line 393
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    #@3
    return-void
.end method

.method resetPendingAction()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1133
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    #@3
    return-void
.end method

.method public setElevation(F)V
    .registers 2

    #@0
    .line 652
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    #@3
    .line 654
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    #@6
    return-void
.end method

.method public setExpanded(Z)V
    .registers 3

    #@0
    .line 669
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    #@7
    return-void
.end method

.method public setExpanded(ZZ)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 684
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    #@4
    return-void
.end method

.method public setLiftOnScroll(Z)V
    .registers 2

    #@0
    .line 1030
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    #@2
    return-void
.end method

.method public setLiftOnScrollTargetView(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    .line 1043
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    #@3
    if-nez p1, :cond_9

    #@5
    .line 1045
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    #@8
    goto :goto_10

    #@9
    .line 1047
    :cond_9
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@b
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@e
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    #@10
    :goto_10
    return-void
.end method

.method public setLiftOnScrollTargetViewId(I)V
    .registers 2

    #@0
    .line 1056
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    #@2
    .line 1058
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    #@5
    return-void
.end method

.method public setLiftable(Z)Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 940
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    #@3
    .line 941
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    #@6
    move-result p1

    #@7
    return p1
.end method

.method public setLiftableOverrideEnabled(Z)V
    .registers 2

    #@0
    .line 956
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    #@2
    return-void
.end method

.method public setLifted(Z)Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 975
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(ZZ)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method setLiftedState(Z)Z
    .registers 3

    #@0
    .line 984
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    #@2
    xor-int/lit8 v0, v0, 0x1

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(ZZ)Z

    #@7
    move-result p1

    #@8
    return p1
.end method

.method setLiftedState(ZZ)Z
    .registers 5

    #@0
    if-eqz p2, :cond_39

    #@2
    .line 989
    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    #@4
    if-eq p2, p1, :cond_39

    #@6
    .line 990
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    #@8
    .line 991
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    #@b
    .line 992
    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    #@d
    if-eqz p2, :cond_37

    #@f
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object p2

    #@13
    instance-of p2, p2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@15
    if-eqz p2, :cond_37

    #@17
    .line 993
    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollColor:Landroid/content/res/ColorStateList;

    #@19
    const/4 v0, 0x0

    #@1a
    if-eqz p2, :cond_2a

    #@1c
    const/high16 p2, 0x437f0000    # 255.0f

    #@1e
    if-eqz p1, :cond_22

    #@20
    move v1, v0

    #@21
    goto :goto_23

    #@22
    :cond_22
    move v1, p2

    #@23
    :goto_23
    if-eqz p1, :cond_26

    #@25
    move v0, p2

    #@26
    .line 994
    :cond_26
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->startLiftOnScrollColorAnimation(FF)V

    #@29
    goto :goto_37

    #@2a
    :cond_2a
    if-eqz p1, :cond_2e

    #@2c
    move p2, v0

    #@2d
    goto :goto_30

    #@2e
    .line 998
    :cond_2e
    iget p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->appBarElevation:F

    #@30
    :goto_30
    if-eqz p1, :cond_34

    #@32
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->appBarElevation:F

    #@34
    .line 997
    :cond_34
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->startLiftOnScrollColorAnimation(FF)V

    #@37
    :cond_37
    :goto_37
    const/4 p1, 0x1

    #@38
    return p1

    #@39
    :cond_39
    const/4 p1, 0x0

    #@3a
    return p1
.end method

.method public setOrientation(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_7

    #@3
    .line 632
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@6
    return-void

    #@7
    .line 629
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string v0, "AppBarLayout is always vertical and does not support horizontal orientation"

    #@b
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw p1
.end method

.method public setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 425
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v0, p1, :cond_46

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 427
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    :cond_a
    if-eqz p1, :cond_10

    #@c
    .line 429
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    :cond_10
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_40

    #@14
    .line 431
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@17
    move-result p1

    #@18
    if-eqz p1, :cond_23

    #@1a
    .line 432
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@23
    .line 434
    :cond_23
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@25
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@28
    move-result v0

    #@29
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@2c
    .line 435
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@2e
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getVisibility()I

    #@31
    move-result v0

    #@32
    const/4 v1, 0x0

    #@33
    if-nez v0, :cond_37

    #@35
    const/4 v0, 0x1

    #@36
    goto :goto_38

    #@37
    :cond_37
    move v0, v1

    #@38
    :goto_38
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@3b
    .line 436
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@3d
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@40
    .line 438
    :cond_40
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->updateWillNotDraw()V

    #@43
    .line 439
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@46
    :cond_46
    return-void
.end method

.method public setStatusBarForegroundColor(I)V
    .registers 3

    #@0
    .line 453
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@2
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    #@8
    return-void
.end method

.method public setStatusBarForegroundResource(I)V
    .registers 3

    #@0
    .line 466
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setTargetElevation(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1115
    invoke-static {p0, p1}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    #@3
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    #@0
    .line 512
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@3
    const/4 v0, 0x0

    #@4
    if-nez p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    move p1, v0

    #@9
    .line 515
    :goto_9
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v1, :cond_10

    #@d
    .line 516
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@10
    :cond_10
    return-void
.end method

.method shouldLift(Landroid/view/View;)Z
    .registers 3

    #@0
    .line 1071
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->findLiftOnScrollTargetView(Landroid/view/View;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    goto :goto_8

    #@7
    :cond_7
    move-object p1, v0

    #@8
    :goto_8
    if-eqz p1, :cond_19

    #@a
    const/4 v0, -0x1

    #@b
    .line 1076
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_17

    #@11
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@14
    move-result p1

    #@15
    if-lez p1, :cond_19

    #@17
    :cond_17
    const/4 p1, 0x1

    #@18
    goto :goto_1a

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    :goto_1a
    return p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    #@0
    .line 507
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    #@8
    if-ne p1, v0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 p1, 0x1

    #@e
    :goto_e
    return p1
.end method
