.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "BottomAppBar.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$MenuAlignmentMode;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$FabAnimationMode;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$FabAnchorMode;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$FabAlignmentMode;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final FAB_ALIGNMENT_ANIM_DURATION_ATTR:I

.field private static final FAB_ALIGNMENT_ANIM_DURATION_DEFAULT:I = 0x12c

.field private static final FAB_ALIGNMENT_ANIM_EASING_ATTR:I

.field private static final FAB_ALIGNMENT_ANIM_EASING_MIDPOINT:F = 0.2f

.field public static final FAB_ALIGNMENT_MODE_CENTER:I = 0x0

.field public static final FAB_ALIGNMENT_MODE_END:I = 0x1

.field public static final FAB_ANCHOR_MODE_CRADLE:I = 0x1

.field public static final FAB_ANCHOR_MODE_EMBED:I = 0x0

.field public static final FAB_ANIMATION_MODE_SCALE:I = 0x0

.field public static final FAB_ANIMATION_MODE_SLIDE:I = 0x1

.field public static final MENU_ALIGNMENT_MODE_AUTO:I = 0x0

.field public static final MENU_ALIGNMENT_MODE_START:I = 0x1

.field private static final NO_FAB_END_MARGIN:I = -0x1

.field private static final NO_MENU_RES_ID:I


# instance fields
.field private animatingModeChangeCounter:I

.field private animationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

.field private bottomInset:I

.field private fabAlignmentMode:I

.field private fabAlignmentModeEndMargin:I

.field private fabAnchorMode:I

.field fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private fabAnimationMode:I

.field private fabAttached:Z

.field private final fabOffsetEndMode:I

.field fabTransformationCallback:Lcom/google/android/material/animation/TransformationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/animation/TransformationCallback<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private hideOnScroll:Z

.field private leftInset:I

.field private final materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private menuAlignmentMode:I

.field private menuAnimatingWithFabAlignmentMode:Z

.field private menuAnimator:Landroid/animation/Animator;

.field private modeAnimator:Landroid/animation/Animator;

.field private navigationIconTint:Ljava/lang/Integer;

.field private final paddingBottomSystemWindowInsets:Z

.field private final paddingLeftSystemWindowInsets:Z

.field private final paddingRightSystemWindowInsets:Z

.field private pendingMenuResId:I

.field private final removeEmbeddedFabElevation:Z

.field private rightInset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 122
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_BottomAppBar:I

    #@2
    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->DEF_STYLE_RES:I

    #@4
    .line 125
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    #@6
    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->FAB_ALIGNMENT_ANIM_DURATION_ATTR:I

    #@8
    .line 126
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@a
    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->FAB_ALIGNMENT_ANIM_EASING_ATTR:I

    #@c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 297
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 301
    sget v0, Lcom/google/android/material/R$attr;->bottomAppBarStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16

    #@0
    .line 305
    sget v6, Lcom/google/android/material/bottomappbar/BottomAppBar;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 186
    new-instance p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@b
    invoke-direct {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@e
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@10
    const/4 v7, 0x0

    #@11
    .line 208
    iput v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    #@13
    .line 219
    iput v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    #@15
    .line 220
    iput-boolean v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z

    #@17
    const/4 v8, 0x1

    #@18
    .line 235
    iput-boolean v8, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    #@1a
    .line 247
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    #@1c
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@1f
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    #@21
    .line 263
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;

    #@23
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$2;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@26
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabTransformationCallback:Lcom/google/android/material/animation/TransformationCallback;

    #@28
    .line 307
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v9

    #@2c
    .line 309
    sget-object v2, Lcom/google/android/material/R$styleable;->BottomAppBar:[I

    #@2e
    new-array v5, v7, [I

    #@30
    move-object v0, v9

    #@31
    move-object v1, p2

    #@32
    move v3, p3

    #@33
    move v4, v6

    #@34
    .line 310
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@37
    move-result-object v0

    #@38
    .line 313
    sget v1, Lcom/google/android/material/R$styleable;->BottomAppBar_backgroundTint:I

    #@3a
    .line 314
    invoke-static {v9, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@3d
    move-result-object v1

    #@3e
    .line 316
    sget v2, Lcom/google/android/material/R$styleable;->BottomAppBar_navigationIconTint:I

    #@40
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@43
    move-result v2

    #@44
    const/4 v3, -0x1

    #@45
    if-eqz v2, :cond_50

    #@47
    .line 317
    sget v2, Lcom/google/android/material/R$styleable;->BottomAppBar_navigationIconTint:I

    #@49
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    #@4c
    move-result v2

    #@4d
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setNavigationIconTint(I)V

    #@50
    .line 320
    :cond_50
    sget v2, Lcom/google/android/material/R$styleable;->BottomAppBar_elevation:I

    #@52
    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@55
    move-result v2

    #@56
    .line 321
    sget v4, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleMargin:I

    #@58
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@5b
    move-result v4

    #@5c
    int-to-float v4, v4

    #@5d
    .line 322
    sget v5, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleRoundedCornerRadius:I

    #@5f
    .line 323
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@62
    move-result v5

    #@63
    int-to-float v5, v5

    #@64
    .line 324
    sget v10, Lcom/google/android/material/R$styleable;->BottomAppBar_fabCradleVerticalOffset:I

    #@66
    .line 325
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@69
    move-result v10

    #@6a
    int-to-float v10, v10

    #@6b
    .line 326
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAlignmentMode:I

    #@6d
    .line 327
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@70
    move-result v11

    #@71
    iput v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    #@73
    .line 328
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAnimationMode:I

    #@75
    .line 329
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@78
    move-result v11

    #@79
    iput v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    #@7b
    .line 330
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAnchorMode:I

    #@7d
    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@80
    move-result v11

    #@81
    iput v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    #@83
    .line 331
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_removeEmbeddedFabElevation:I

    #@85
    .line 332
    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@88
    move-result v11

    #@89
    iput-boolean v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->removeEmbeddedFabElevation:Z

    #@8b
    .line 334
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_menuAlignmentMode:I

    #@8d
    .line 335
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@90
    move-result v11

    #@91
    iput v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAlignmentMode:I

    #@93
    .line 336
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_hideOnScroll:I

    #@95
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@98
    move-result v11

    #@99
    iput-boolean v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    #@9b
    .line 338
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_paddingBottomSystemWindowInsets:I

    #@9d
    .line 339
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a0
    move-result v11

    #@a1
    iput-boolean v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->paddingBottomSystemWindowInsets:Z

    #@a3
    .line 340
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_paddingLeftSystemWindowInsets:I

    #@a5
    .line 341
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a8
    move-result v11

    #@a9
    iput-boolean v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->paddingLeftSystemWindowInsets:Z

    #@ab
    .line 342
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_paddingRightSystemWindowInsets:I

    #@ad
    .line 343
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@b0
    move-result v11

    #@b1
    iput-boolean v11, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->paddingRightSystemWindowInsets:Z

    #@b3
    .line 344
    sget v11, Lcom/google/android/material/R$styleable;->BottomAppBar_fabAlignmentModeEndMargin:I

    #@b5
    .line 345
    invoke-virtual {v0, v11, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@b8
    move-result v3

    #@b9
    iput v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentModeEndMargin:I

    #@bb
    .line 348
    sget v3, Lcom/google/android/material/R$styleable;->BottomAppBar_addElevationShadow:I

    #@bd
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c0
    move-result v3

    #@c1
    .line 349
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c4
    .line 352
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    #@c7
    move-result-object v0

    #@c8
    sget v11, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fabOffsetEndMode:I

    #@ca
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@cd
    move-result v0

    #@ce
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    #@d0
    .line 354
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@d2
    invoke-direct {v0, v4, v5, v10}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;-><init>(FFF)V

    #@d5
    .line 357
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@d8
    move-result-object v4

    #@d9
    invoke-virtual {v4, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@dc
    move-result-object v0

    #@dd
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@e0
    move-result-object v0

    #@e1
    .line 358
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@e4
    if-eqz v3, :cond_eb

    #@e6
    const/4 v0, 0x2

    #@e7
    .line 360
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    #@ea
    goto :goto_fa

    #@eb
    .line 363
    :cond_eb
    invoke-virtual {p1, v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    #@ee
    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@f0
    const/16 v3, 0x1c

    #@f2
    if-lt v0, v3, :cond_fa

    #@f4
    .line 365
    invoke-virtual {p0, v7}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setOutlineAmbientShadowColor(I)V

    #@f7
    .line 366
    invoke-virtual {p0, v7}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setOutlineSpotShadowColor(I)V

    #@fa
    .line 369
    :cond_fa
    :goto_fa
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@fc
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setPaintStyle(Landroid/graphics/Paint$Style;)V

    #@ff
    .line 370
    invoke-virtual {p1, v9}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@102
    int-to-float v0, v2

    #@103
    .line 371
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setElevation(F)V

    #@106
    .line 372
    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@109
    .line 373
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@10c
    .line 375
    new-instance p1, Lcom/google/android/material/bottomappbar/BottomAppBar$3;

    #@10e
    invoke-direct {p1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$3;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@111
    invoke-static {p0, p2, p3, v6, p1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    #@114
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .registers 1

    #@0
    .line 120
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z

    #@2
    return p0
.end method

.method static synthetic access$002(Lcom/google/android/material/bottomappbar/BottomAppBar;Z)Z
    .registers 2

    #@0
    .line 120
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z

    #@2
    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .registers 1

    #@0
    .line 120
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    #@2
    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .registers 1

    #@0
    .line 120
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->leftInset:I

    #@2
    return p0
.end method

.method static synthetic access$1002(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .registers 2

    #@0
    .line 120
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->leftInset:I

    #@2
    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .registers 1

    #@0
    .line 120
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->paddingRightSystemWindowInsets:Z

    #@2
    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .registers 1

    #@0
    .line 120
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->rightInset:I

    #@2
    return p0
.end method

.method static synthetic access$1202(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .registers 2

    #@0
    .line 120
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->rightInset:I

    #@2
    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->cancelAnimations()V

    #@3
    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutStateAndTranslateFab()V

    #@3
    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setActionMenuViewPosition()V

    #@3
    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationStart()V

    #@3
    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationEnd()V

    #@3
    return-void
.end method

.method static synthetic access$1802(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    #@0
    .line 120
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    #@2
    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F
    .registers 2

    #@0
    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .registers 1

    #@0
    .line 120
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    #@2
    return p0
.end method

.method static synthetic access$2002(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    #@0
    .line 120
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    #@2
    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .registers 1

    #@0
    .line 120
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    #@2
    return p0
.end method

.method static synthetic access$2200(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZZ)V
    .registers 5

    #@0
    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    #@3
    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$2800(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBottomInset()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$2900(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getLeftInset()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/bottomappbar/BottomAppBar;IZ)V
    .registers 3

    #@0
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    #@3
    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getRightInset()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$3100(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .registers 1

    #@0
    .line 120
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    #@2
    return p0
.end method

.method static synthetic access$3200(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$3300(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V
    .registers 2

    #@0
    .line 120
    invoke-static {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->updateFabAnchorGravity(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V

    #@3
    return-void
.end method

.method static synthetic access$3400(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .registers 1

    #@0
    .line 120
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->removeEmbeddedFabElevation:Z

    #@2
    return p0
.end method

.method static synthetic access$3500(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .registers 2

    #@0
    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .registers 1

    #@0
    .line 120
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    #@2
    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 1

    #@0
    .line 120
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    .registers 1

    #@0
    .line 120
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .registers 1

    #@0
    .line 120
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->paddingBottomSystemWindowInsets:Z

    #@2
    return p0
.end method

.method static synthetic access$802(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .registers 2

    #@0
    .line 120
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->bottomInset:I

    #@2
    return p1
.end method

.method static synthetic access$900(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .registers 1

    #@0
    .line 120
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->paddingLeftSystemWindowInsets:Z

    #@2
    return p0
.end method

.method private addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .registers 3

    #@0
    .line 1244
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    #@2
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    #@5
    .line 1245
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;

    #@7
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$9;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@a
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    #@d
    .line 1258
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabTransformationCallback:Lcom/google/android/material/animation/TransformationCallback;

    #@f
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->addTransformationCallback(Lcom/google/android/material/animation/TransformationCallback;)V

    #@12
    return-void
.end method

.method private cancelAnimations()V
    .registers 2

    #@0
    .line 1171
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1172
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@7
    .line 1174
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    #@9
    if-eqz v0, :cond_e

    #@b
    .line 1175
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@e
    :cond_e
    return-void
.end method

.method private createFabTranslationXAnimation(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 920
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [F

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)F

    #@b
    move-result p1

    #@c
    aput p1, v1, v2

    #@e
    const-string p1, "translationX"

    #@10
    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@13
    move-result-object p1

    #@14
    .line 921
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabAlignmentAnimationDuration()I

    #@17
    move-result v0

    #@18
    int-to-long v0, v0

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@1c
    .line 922
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    return-void
.end method

.method private createMenuViewTranslationAnimation(IZLjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 989
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 996
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabAlignmentAnimationDuration()I

    #@a
    move-result v1

    #@b
    int-to-float v1, v1

    #@c
    const/4 v2, 0x1

    #@d
    new-array v3, v2, [F

    #@f
    const/4 v4, 0x0

    #@10
    const/high16 v5, 0x3f800000    # 1.0f

    #@12
    aput v5, v3, v4

    #@14
    const-string v6, "alpha"

    #@16
    .line 997
    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@19
    move-result-object v3

    #@1a
    const v7, 0x3f4ccccd    # 0.8f

    #@1d
    mul-float/2addr v7, v1

    #@1e
    float-to-long v7, v7

    #@1f
    .line 998
    invoke-virtual {v3, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@22
    .line 1001
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getTranslationX()F

    #@25
    move-result v7

    #@26
    .line 1002
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuViewTranslationX(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    #@29
    move-result v8

    #@2a
    int-to-float v8, v8

    #@2b
    sub-float/2addr v7, v8

    #@2c
    .line 1005
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    #@2f
    move-result v7

    #@30
    cmpl-float v7, v7, v5

    #@32
    if-lez v7, :cond_60

    #@34
    new-array v5, v2, [F

    #@36
    const/4 v7, 0x0

    #@37
    aput v7, v5, v4

    #@39
    .line 1007
    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@3c
    move-result-object v5

    #@3d
    const v6, 0x3e4ccccd    # 0.2f

    #@40
    mul-float/2addr v1, v6

    #@41
    float-to-long v6, v1

    #@42
    .line 1008
    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@45
    .line 1010
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$7;

    #@47
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$7;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    #@4a
    invoke-virtual {v5, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@4d
    .line 1029
    new-instance p1, Landroid/animation/AnimatorSet;

    #@4f
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    #@52
    const/4 p2, 0x2

    #@53
    new-array p2, p2, [Landroid/animation/Animator;

    #@55
    aput-object v5, p2, v4

    #@57
    aput-object v3, p2, v2

    #@59
    .line 1030
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    #@5c
    .line 1031
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5f
    goto :goto_6b

    #@60
    .line 1032
    :cond_60
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getAlpha()F

    #@63
    move-result p1

    #@64
    cmpg-float p1, p1, v5

    #@66
    if-gez p1, :cond_6b

    #@68
    .line 1035
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6b
    :cond_6b
    :goto_6b
    return-void
.end method

.method private dispatchAnimationEnd()V
    .registers 3

    #@0
    .line 788
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    #@6
    if-nez v0, :cond_20

    #@8
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    #@a
    if-eqz v0, :cond_20

    #@c
    .line 790
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;

    #@1c
    .line 791
    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;->onAnimationEnd(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@1f
    goto :goto_10

    #@20
    :cond_20
    return-void
.end method

.method private dispatchAnimationStart()V
    .registers 3

    #@0
    .line 779
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animatingModeChangeCounter:I

    #@6
    if-nez v0, :cond_20

    #@8
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    #@a
    if-eqz v0, :cond_20

    #@c
    .line 781
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;

    #@1c
    .line 782
    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;->onAnimationStart(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@1f
    goto :goto_10

    #@20
    :cond_20
    return-void
.end method

.method private findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .registers 3

    #@0
    .line 858
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 859
    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@6
    if-eqz v1, :cond_b

    #@8
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return-object v0
.end method

.method private findDependentView()Landroid/view/View;
    .registers 5

    #@0
    .line 864
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_a

    #@9
    return-object v1

    #@a
    .line 869
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@10
    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 870
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v0

    #@18
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2d

    #@1e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/view/View;

    #@24
    .line 871
    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@26
    if-nez v3, :cond_2c

    #@28
    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2a
    if-eqz v3, :cond_18

    #@2c
    :cond_2c
    return-object v2

    #@2d
    :cond_2d
    return-object v1
.end method

.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1072
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_15

    #@7
    .line 1073
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 1074
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    #@d
    if-eqz v2, :cond_12

    #@f
    .line 1075
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    #@11
    return-object v1

    #@12
    :cond_12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_1

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return-object v0
.end method

.method private getBottomInset()I
    .registers 2

    #@0
    .line 1262
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->bottomInset:I

    #@2
    return v0
.end method

.method private getFabAlignmentAnimationDuration()I
    .registers 4

    #@0
    .line 927
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    sget v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->FAB_ALIGNMENT_ANIM_DURATION_ATTR:I

    #@6
    const/16 v2, 0x12c

    #@8
    .line 926
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private getFabTranslationX()F
    .registers 2

    #@0
    .line 1067
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getFabTranslationX(I)F
    .registers 7

    #@0
    .line 1047
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne p1, v1, :cond_33

    #@7
    .line 1049
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    #@a
    move-result-object p1

    #@b
    if-eqz v0, :cond_10

    #@d
    .line 1050
    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->leftInset:I

    #@f
    goto :goto_12

    #@10
    :cond_10
    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->rightInset:I

    #@12
    .line 1052
    :goto_12
    iget v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentModeEndMargin:I

    #@14
    const/4 v4, -0x1

    #@15
    if-eq v3, v4, :cond_23

    #@17
    if-eqz p1, :cond_23

    #@19
    .line 1053
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@1c
    move-result p1

    #@1d
    div-int/lit8 p1, p1, 0x2

    #@1f
    iget v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentModeEndMargin:I

    #@21
    add-int/2addr p1, v3

    #@22
    goto :goto_25

    #@23
    .line 1058
    :cond_23
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    #@25
    :goto_25
    add-int/2addr v2, p1

    #@26
    .line 1060
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    #@29
    move-result p1

    #@2a
    div-int/lit8 p1, p1, 0x2

    #@2c
    sub-int/2addr p1, v2

    #@2d
    if-eqz v0, :cond_30

    #@2f
    move v1, v4

    #@30
    :cond_30
    mul-int/2addr p1, v1

    #@31
    int-to-float p1, p1

    #@32
    return p1

    #@33
    :cond_33
    const/4 p1, 0x0

    #@34
    return p1
.end method

.method private getFabTranslationY()F
    .registers 3

    #@0
    .line 1040
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_f

    #@5
    .line 1041
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    #@c
    move-result v0

    #@d
    neg-float v0, v0

    #@e
    return v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method private getLeftInset()I
    .registers 2

    #@0
    .line 1270
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->leftInset:I

    #@2
    return v0
.end method

.method private getRightInset()I
    .registers 2

    #@0
    .line 1266
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->rightInset:I

    #@2
    return v0
.end method

.method private getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
    .registers 2

    #@0
    .line 1205
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    .line 1206
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@c
    return-object v0
.end method

.method private isFabVisibleOrWillBeShown()Z
    .registers 2

    #@0
    .line 880
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 881
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isOrWillBeShown()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method static synthetic lambda$onLayout$0(Landroid/view/View;)V
    .registers 1

    #@0
    .line 1195
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@3
    return-void
.end method

.method private maybeAnimateMenuView(IZ)V
    .registers 6

    #@0
    .line 942
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_f

    #@7
    .line 943
    iput-boolean v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z

    #@9
    .line 946
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    #@b
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->replaceMenu(I)V

    #@e
    return-void

    #@f
    .line 950
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    #@11
    if-eqz v0, :cond_16

    #@13
    .line 951
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@16
    .line 954
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 957
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_23

    #@21
    move p1, v1

    #@22
    move p2, p1

    #@23
    .line 962
    :cond_23
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V

    #@26
    .line 964
    new-instance p1, Landroid/animation/AnimatorSet;

    #@28
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    #@2b
    .line 965
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    #@2e
    .line 966
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    #@30
    .line 967
    new-instance p2, Lcom/google/android/material/bottomappbar/BottomAppBar$6;

    #@32
    invoke-direct {p2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$6;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@35
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@38
    .line 981
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    #@3a
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    #@3d
    return-void
.end method

.method private maybeAnimateModeChange(I)V
    .registers 5

    #@0
    .line 818
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    #@2
    if-eq v0, p1, :cond_49

    #@4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_49

    #@b
    .line 822
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    #@d
    if-eqz v0, :cond_12

    #@f
    .line 823
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@12
    .line 826
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 828
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    #@19
    const/4 v2, 0x1

    #@1a
    if-ne v1, v2, :cond_20

    #@1c
    .line 829
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabTranslationXAnimation(ILjava/util/List;)V

    #@1f
    goto :goto_23

    #@20
    .line 831
    :cond_20
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabDefaultXAnimation(ILjava/util/List;)V

    #@23
    .line 834
    :goto_23
    new-instance p1, Landroid/animation/AnimatorSet;

    #@25
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    #@28
    .line 835
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    #@2b
    .line 838
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getContext()Landroid/content/Context;

    #@2e
    move-result-object v0

    #@2f
    sget v1, Lcom/google/android/material/bottomappbar/BottomAppBar;->FAB_ALIGNMENT_ANIM_EASING_ATTR:I

    #@31
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@33
    .line 837
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@36
    move-result-object v0

    #@37
    .line 836
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@3a
    .line 839
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    #@3c
    .line 840
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    #@3e
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@41
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@44
    .line 853
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->modeAnimator:Landroid/animation/Animator;

    #@46
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    #@49
    :cond_49
    :goto_49
    return-void
.end method

.method private maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    if-eqz p1, :cond_17

    #@2
    .line 932
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->navigationIconTint:Ljava/lang/Integer;

    #@4
    if-eqz v0, :cond_17

    #@6
    .line 933
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object p1

    #@e
    .line 934
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->navigationIconTint:Ljava/lang/Integer;

    #@10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@17
    :cond_17
    return-object p1
.end method

.method private setActionMenuViewPosition()V
    .registers 4

    #@0
    .line 1224
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_21

    #@6
    .line 1227
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;

    #@8
    if-nez v1, :cond_21

    #@a
    const/high16 v1, 0x3f800000    # 1.0f

    #@c
    .line 1228
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    #@f
    .line 1229
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1a

    #@15
    const/4 v1, 0x0

    #@16
    .line 1230
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    #@19
    goto :goto_21

    #@1a
    .line 1232
    :cond_1a
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    #@1c
    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    #@1e
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    #@21
    :cond_21
    :goto_21
    return-void
.end method

.method private setCutoutStateAndTranslateFab()V
    .registers 4

    #@0
    .line 1211
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setHorizontalOffset(F)V

    #@b
    .line 1212
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@d
    .line 1213
    iget-boolean v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    #@f
    if-eqz v1, :cond_1f

    #@11
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1f

    #@17
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    #@19
    const/4 v2, 0x1

    #@1a
    if-ne v1, v2, :cond_1f

    #@1c
    const/high16 v1, 0x3f800000    # 1.0f

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 v1, 0x0

    #@20
    .line 1212
    :goto_20
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    #@23
    .line 1216
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    #@26
    move-result-object v0

    #@27
    if-eqz v0, :cond_37

    #@29
    .line 1218
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    #@2c
    move-result v1

    #@2d
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    #@30
    .line 1219
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    #@33
    move-result v1

    #@34
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    #@37
    :cond_37
    return-void
.end method

.method private translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1086
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZZ)V

    #@4
    return-void
.end method

.method private translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZZ)V
    .registers 6

    #@0
    .line 1104
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$8;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar$8;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    #@5
    if-eqz p4, :cond_b

    #@7
    .line 1115
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->post(Ljava/lang/Runnable;)Z

    #@a
    goto :goto_e

    #@b
    .line 1117
    :cond_b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@e
    :goto_e
    return-void
.end method

.method private static updateFabAnchorGravity(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V
    .registers 4

    #@0
    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    const/16 v0, 0x11

    #@8
    .line 506
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    #@a
    .line 507
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    #@c
    const/4 v1, 0x1

    #@d
    if-ne v0, v1, :cond_15

    #@f
    .line 508
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    #@11
    or-int/lit8 v0, v0, 0x30

    #@13
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    #@15
    .line 510
    :cond_15
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    #@17
    if-nez p0, :cond_1f

    #@19
    .line 511
    iget p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    #@1b
    or-int/lit8 p0, p0, 0x50

    #@1d
    iput p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    #@1f
    :cond_1f
    return-void
.end method


# virtual methods
.method addAnimationListener(Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;)V
    .registers 3

    #@0
    .line 765
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 766
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    #@b
    .line 768
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method public addOnScrollStateChangedListener(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;)V
    .registers 3

    #@0
    .line 721
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->addOnScrollStateChangedListener(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;)V

    #@7
    return-void
.end method

.method public clearOnScrollStateChangedListeners()V
    .registers 2

    #@0
    .line 737
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->clearOnScrollStateChangedListeners()V

    #@7
    return-void
.end method

.method protected createFabDefaultXAnimation(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 893
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@3
    move-result-object p2

    #@4
    if-eqz p2, :cond_18

    #@6
    .line 895
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isOrWillBeHidden()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_18

    #@d
    .line 899
    :cond_d
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationStart()V

    #@10
    .line 901
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;

    #@12
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V

    #@15
    invoke-virtual {p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    #@18
    :cond_18
    :goto_18
    return-void
.end method

.method protected getActionMenuViewTranslationX(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .registers 10

    #@0
    .line 1131
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAlignmentMode:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-eq v0, v2, :cond_b

    #@6
    if-ne p2, v2, :cond_a

    #@8
    if-nez p3, :cond_b

    #@a
    :cond_a
    return v1

    #@b
    .line 1136
    :cond_b
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@e
    move-result p2

    #@f
    if-eqz p2, :cond_16

    #@11
    .line 1137
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    #@14
    move-result p3

    #@15
    goto :goto_17

    #@16
    :cond_16
    move p3, v1

    #@17
    :goto_17
    move v0, v1

    #@18
    .line 1140
    :goto_18
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    #@1b
    move-result v3

    #@1c
    if-ge v0, v3, :cond_56

    #@1e
    .line 1141
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v3

    #@22
    .line 1143
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@25
    move-result-object v4

    #@26
    instance-of v4, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@28
    if-eqz v4, :cond_3d

    #@2a
    .line 1144
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    #@30
    iget v4, v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    #@32
    const v5, 0x800007

    #@35
    and-int/2addr v4, v5

    #@36
    const v5, 0x800003

    #@39
    if-ne v4, v5, :cond_3d

    #@3b
    move v4, v2

    #@3c
    goto :goto_3e

    #@3d
    :cond_3d
    move v4, v1

    #@3e
    :goto_3e
    if-eqz v4, :cond_53

    #@40
    if-eqz p2, :cond_4b

    #@42
    .line 1150
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@45
    move-result v3

    #@46
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    #@49
    move-result p3

    #@4a
    goto :goto_53

    #@4b
    .line 1151
    :cond_4b
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    #@4e
    move-result v3

    #@4f
    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    #@52
    move-result p3

    #@53
    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_18

    #@56
    :cond_56
    if-eqz p2, :cond_5d

    #@58
    .line 1155
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getRight()I

    #@5b
    move-result p1

    #@5c
    goto :goto_61

    #@5d
    :cond_5d
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLeft()I

    #@60
    move-result p1

    #@61
    :goto_61
    if-eqz p2, :cond_66

    #@63
    .line 1156
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->rightInset:I

    #@65
    goto :goto_69

    #@66
    :cond_66
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->leftInset:I

    #@68
    neg-int v0, v0

    #@69
    .line 1160
    :goto_69
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@6c
    move-result-object v2

    #@6d
    if-nez v2, :cond_7e

    #@6f
    .line 1162
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    #@72
    move-result-object v1

    #@73
    sget v2, Lcom/google/android/material/R$dimen;->m3_bottomappbar_horizontal_padding:I

    #@75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@78
    move-result v1

    #@79
    if-eqz p2, :cond_7c

    #@7b
    goto :goto_7e

    #@7c
    :cond_7c
    neg-int p2, v1

    #@7d
    move v1, p2

    #@7e
    :cond_7e
    :goto_7e
    add-int/2addr p1, v0

    #@7f
    add-int/2addr p1, v1

    #@80
    sub-int/2addr p3, p1

    #@81
    return p3
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 566
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTintList()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .registers 2

    #@0
    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    .registers 2

    #@0
    .line 1286
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 1287
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@6
    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@b
    .line 1289
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->behavior:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@d
    return-object v0
.end method

.method public getCradleVerticalOffset()F
    .registers 2

    #@0
    .line 615
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getCradleVerticalOffset()F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getFabAlignmentMode()I
    .registers 2

    #@0
    .line 442
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    #@2
    return v0
.end method

.method public getFabAlignmentModeEndMargin()I
    .registers 2

    #@0
    .line 639
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentModeEndMargin:I

    #@2
    return v0
.end method

.method public getFabAnchorMode()I
    .registers 2

    #@0
    .line 483
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    #@2
    return v0
.end method

.method public getFabAnimationMode()I
    .registers 2

    #@0
    .line 521
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    #@2
    return v0
.end method

.method public getFabCradleMargin()F
    .registers 2

    #@0
    .line 573
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleMargin()F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .registers 2

    #@0
    .line 595
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCradleRoundedCornerRadius()F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getHideOnScroll()Z
    .registers 2

    #@0
    .line 661
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    #@2
    return v0
.end method

.method public getMenuAlignmentMode()I
    .registers 2

    #@0
    .line 557
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAlignmentMode:I

    #@2
    return v0
.end method

.method public isScrolledDown()Z
    .registers 2

    #@0
    .line 703
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->isScrolledDown()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isScrolledUp()Z
    .registers 2

    #@0
    .line 708
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->isScrolledUp()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    #@0
    .line 1294
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    #@3
    .line 1296
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@5
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    #@8
    .line 1300
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    #@b
    move-result-object v0

    #@c
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@e
    if-eqz v0, :cond_1a

    #@10
    .line 1301
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/view/ViewGroup;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    #@1a
    :cond_1a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    .line 1181
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    #@3
    if-eqz p1, :cond_1f

    #@5
    .line 1188
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->cancelAnimations()V

    #@8
    .line 1190
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutStateAndTranslateFab()V

    #@b
    .line 1193
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    #@e
    move-result-object p1

    #@f
    if-eqz p1, :cond_1f

    #@11
    .line 1194
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@14
    move-result p2

    #@15
    if-eqz p2, :cond_1f

    #@17
    .line 1195
    new-instance p2, Lcom/google/android/material/bottomappbar/BottomAppBar$$ExternalSyntheticLambda0;

    #@19
    invoke-direct {p2, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    #@1c
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@1f
    .line 1200
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setActionMenuViewPosition()V

    #@22
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 1483
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 1484
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 1487
    :cond_8
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    #@a
    .line 1488
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 1489
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    #@13
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    #@15
    .line 1490
    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    #@17
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    #@19
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 1474
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 1475
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    #@6
    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1476
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    #@b
    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAlignmentMode:I

    #@d
    .line 1477
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    #@f
    iput-boolean v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->fabAttached:Z

    #@11
    return-object v1
.end method

.method public performHide()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 675
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->performHide(Z)V

    #@4
    return-void
.end method

.method public performHide(Z)V
    .registers 3

    #@0
    .line 684
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->slideDown(Landroid/view/View;Z)V

    #@7
    return-void
.end method

.method public performShow()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 689
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->performShow(Z)V

    #@4
    return-void
.end method

.method public performShow(Z)V
    .registers 3

    #@0
    .line 698
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->slideUp(Landroid/view/View;Z)V

    #@7
    return-void
.end method

.method removeAnimationListener(Lcom/google/android/material/bottomappbar/BottomAppBar$AnimationListener;)V
    .registers 3

    #@0
    .line 772
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->animationListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 775
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    return-void
.end method

.method public removeOnScrollStateChangedListener(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;)V
    .registers 3

    #@0
    .line 732
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->removeOnScrollStateChangedListener(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;)V

    #@7
    return-void
.end method

.method public replaceMenu(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_f

    #@2
    const/4 v0, 0x0

    #@3
    .line 757
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    #@5
    .line 758
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    #@c
    .line 759
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->inflateMenu(I)V

    #@f
    :cond_f
    return-void
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 561
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .registers 3

    #@0
    .line 625
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    #@3
    move-result v0

    #@4
    cmpl-float v0, p1, v0

    #@6
    if-eqz v0, :cond_17

    #@8
    .line 626
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    #@f
    .line 627
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@11
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    #@14
    .line 628
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutStateAndTranslateFab()V

    #@17
    :cond_17
    return-void
.end method

.method public setElevation(F)V
    .registers 3

    #@0
    .line 742
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@5
    .line 744
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@7
    .line 745
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowRadius()I

    #@a
    move-result p1

    #@b
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@d
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShadowOffsetY()I

    #@10
    move-result v0

    #@11
    sub-int/2addr p1, v0

    #@12
    .line 746
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->setAdditionalHiddenOffsetY(Landroid/view/View;I)V

    #@19
    return-void
.end method

.method public setFabAlignmentMode(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 453
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabAlignmentModeAndReplaceMenu(II)V

    #@4
    return-void
.end method

.method public setFabAlignmentModeAndReplaceMenu(II)V
    .registers 3

    #@0
    .line 470
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->pendingMenuResId:I

    #@2
    const/4 p2, 0x1

    #@3
    .line 471
    iput-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z

    #@5
    .line 472
    iget-boolean p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAttached:Z

    #@7
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V

    #@a
    .line 473
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateModeChange(I)V

    #@d
    .line 474
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    #@f
    return-void
.end method

.method public setFabAlignmentModeEndMargin(I)V
    .registers 3

    #@0
    .line 649
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentModeEndMargin:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 650
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentModeEndMargin:I

    #@6
    .line 651
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutStateAndTranslateFab()V

    #@9
    :cond_9
    return-void
.end method

.method public setFabAnchorMode(I)V
    .registers 2

    #@0
    .line 493
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    #@2
    .line 494
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setCutoutStateAndTranslateFab()V

    #@5
    .line 495
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentView()Landroid/view/View;

    #@8
    move-result-object p1

    #@9
    if-eqz p1, :cond_16

    #@b
    .line 497
    invoke-static {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->updateFabAnchorGravity(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/view/View;)V

    #@e
    .line 498
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    #@11
    .line 499
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@13
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    #@16
    :cond_16
    return-void
.end method

.method public setFabAnimationMode(I)V
    .registers 2

    #@0
    .line 531
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationMode:I

    #@2
    return-void
.end method

.method setFabCornerSize(F)V
    .registers 3

    #@0
    .line 811
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabCornerRadius()F

    #@7
    move-result v0

    #@8
    cmpl-float v0, p1, v0

    #@a
    if-eqz v0, :cond_18

    #@c
    .line 812
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCornerSize(F)V

    #@13
    .line 813
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@15
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    #@18
    :cond_18
    return-void
.end method

.method public setFabCradleMargin(F)V
    .registers 3

    #@0
    .line 583
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    #@3
    move-result v0

    #@4
    cmpl-float v0, p1, v0

    #@6
    if-eqz v0, :cond_14

    #@8
    .line 584
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleMargin(F)V

    #@f
    .line 585
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@11
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    #@14
    :cond_14
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .registers 3

    #@0
    .line 603
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    #@3
    move-result v0

    #@4
    cmpl-float v0, p1, v0

    #@6
    if-eqz v0, :cond_14

    #@8
    .line 604
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabCradleRoundedCornerRadius(F)V

    #@f
    .line 605
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@11
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    #@14
    :cond_14
    return-void
.end method

.method setFabDiameter(I)Z
    .registers 3

    #@0
    int-to-float p1, p1

    #@1
    .line 801
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->getFabDiameter()F

    #@8
    move-result v0

    #@9
    cmpl-float v0, p1, v0

    #@b
    if-eqz v0, :cond_1b

    #@d
    .line 802
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setFabDiameter(F)V

    #@14
    .line 803
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@16
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    #@19
    const/4 p1, 0x1

    #@1a
    return p1

    #@1b
    :cond_1b
    const/4 p1, 0x0

    #@1c
    return p1
.end method

.method public setHideOnScroll(Z)V
    .registers 2

    #@0
    .line 670
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->hideOnScroll:Z

    #@2
    return-void
.end method

.method public setMenuAlignmentMode(I)V
    .registers 4

    #@0
    .line 542
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAlignmentMode:I

    #@2
    if-eq v0, p1, :cond_15

    #@4
    .line 543
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAlignmentMode:I

    #@6
    .line 544
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_15

    #@c
    .line 546
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAlignmentMode:I

    #@e
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->isFabVisibleOrWillBeShown()Z

    #@11
    move-result v1

    #@12
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->translateActionMenuView(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    #@15
    :cond_15
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 419
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@7
    return-void
.end method

.method public setNavigationIconTint(I)V
    .registers 2

    #@0
    .line 428
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object p1

    #@4
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->navigationIconTint:Ljava/lang/Integer;

    #@6
    .line 429
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_f

    #@c
    .line 432
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    #@f
    :cond_f
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    return-void
.end method
