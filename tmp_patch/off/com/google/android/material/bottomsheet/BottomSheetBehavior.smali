.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SaveFlags;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StableState;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$State;,
        Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final CORNER_ANIMATION_DURATION:I = 0x1f4

.field static final DEFAULT_SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4

.field private static final DEF_STYLE_RES:I

.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field private static final NO_MAX_SIZE:I = -0x1

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final SAVE_ALL:I = -0x1

.field public static final SAVE_FIT_TO_CONTENTS:I = 0x2

.field public static final SAVE_HIDEABLE:I = 0x4

.field public static final SAVE_NONE:I = 0x0

.field public static final SAVE_PEEK_HEIGHT:I = 0x1

.field public static final SAVE_SKIP_COLLAPSED:I = 0x8

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BottomSheetBehavior"

.field static final VIEW_INDEX_ACCESSIBILITY_DELEGATE_VIEW:I = 0x1

.field private static final VIEW_INDEX_BOTTOM_SHEET:I


# instance fields
.field accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field activePointerId:I

.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private childHeight:I

.field collapsedOffset:I

.field private final dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private draggable:Z

.field elevation:F

.field final expandHalfwayActionIds:Landroid/util/SparseIntArray;

.field private expandedCornersRemoved:Z

.field expandedOffset:I

.field private fitToContents:Z

.field fitToContentsOffset:I

.field private gestureInsetBottom:I

.field private gestureInsetBottomIgnored:Z

.field halfExpandedOffset:I

.field halfExpandedRatio:F

.field private hideFriction:F

.field hideable:Z

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialY:I

.field private insetBottom:I

.field private insetTop:I

.field private interpolatorAnimator:Landroid/animation/ValueAnimator;

.field private lastNestedScrollDy:I

.field lastStableState:I

.field private marginLeftSystemWindowInsets:Z

.field private marginRightSystemWindowInsets:Z

.field private marginTopSystemWindowInsets:Z

.field private materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private maxHeight:I

.field private maxWidth:I

.field private maximumVelocity:F

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private paddingBottomSystemWindowInsets:Z

.field private paddingLeftSystemWindowInsets:Z

.field private paddingRightSystemWindowInsets:Z

.field private paddingTopSystemWindowInsets:Z

.field parentHeight:I

.field parentWidth:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightGestureInsetBuffer:I

.field private peekHeightMin:I

.field private saveFlags:I

.field private shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private shouldRemoveExpandedCorners:Z

.field private significantVelocityThreshold:I

.field private skipCollapsed:Z

.field state:I

.field private final stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>.StateSettlingTracker;"
        }
    .end annotation
.end field

.field touchingScrollingChild:Z

.field private updateImportantForAccessibilityOnSiblings:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 273
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_BottomSheet_Modal:I

    #@2
    sput v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 331
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 204
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    #@6
    const/4 v1, 0x1

    #@7
    .line 221
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@9
    .line 223
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    #@b
    const/4 v0, -0x1

    #@c
    .line 245
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    #@e
    .line 247
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    #@10
    .line 269
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    #@12
    const/4 v2, 0x0

    #@13
    invoke-direct {v0, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;)V

    #@16
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    #@18
    const/high16 v0, 0x3f000000    # 0.5f

    #@1a
    .line 281
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    #@1c
    const/high16 v0, -0x40800000    # -1.0f

    #@1e
    .line 285
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    #@20
    .line 291
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    #@22
    const/4 v0, 0x4

    #@23
    .line 293
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@25
    .line 295
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    #@27
    const v0, 0x3dcccccd    # 0.1f

    #@2a
    .line 305
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideFriction:F

    #@2c
    .line 316
    new-instance v0, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@31
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@33
    .line 328
    new-instance v0, Landroid/util/SparseIntArray;

    #@35
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@38
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    #@3a
    .line 1698
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    #@3c
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    #@3f
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    #@0
    .line 334
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 204
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    #@6
    const/4 v1, 0x1

    #@7
    .line 221
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@9
    .line 223
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    #@b
    const/4 v2, -0x1

    #@c
    .line 245
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    #@e
    .line 247
    iput v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    #@10
    .line 269
    new-instance v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    #@12
    const/4 v4, 0x0

    #@13
    invoke-direct {v3, p0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;)V

    #@16
    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    #@18
    const/high16 v3, 0x3f000000    # 0.5f

    #@1a
    .line 281
    iput v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    #@1c
    const/high16 v4, -0x40800000    # -1.0f

    #@1e
    .line 285
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    #@20
    .line 291
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    #@22
    const/4 v5, 0x4

    #@23
    .line 293
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@25
    .line 295
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    #@27
    const v5, 0x3dcccccd    # 0.1f

    #@2a
    .line 305
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideFriction:F

    #@2c
    .line 316
    new-instance v5, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@31
    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@33
    .line 328
    new-instance v5, Landroid/util/SparseIntArray;

    #@35
    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    #@38
    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    #@3a
    .line 1698
    new-instance v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;

    #@3c
    invoke-direct {v5, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    #@3f
    iput-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@41
    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@44
    move-result-object v5

    #@45
    sget v6, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    #@47
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@4a
    move-result v5

    #@4b
    iput v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    #@4d
    .line 339
    sget-object v5, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout:[I

    #@4f
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@52
    move-result-object v5

    #@53
    .line 340
    sget v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    #@55
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@58
    move-result v6

    #@59
    if-eqz v6, :cond_63

    #@5b
    .line 341
    sget v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    #@5d
    invoke-static {p1, v5, v6}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@60
    move-result-object v6

    #@61
    iput-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    #@63
    .line 344
    :cond_63
    sget v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_shapeAppearance:I

    #@65
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@68
    move-result v6

    #@69
    if-eqz v6, :cond_79

    #@6b
    .line 345
    sget v6, Lcom/google/android/material/R$attr;->bottomSheetStyle:I

    #@6d
    sget v7, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->DEF_STYLE_RES:I

    #@6f
    .line 346
    invoke-static {p1, p2, v6, v7}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@72
    move-result-object p2

    #@73
    .line 347
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@76
    move-result-object p2

    #@77
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@79
    .line 349
    :cond_79
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createMaterialShapeDrawableIfNeeded(Landroid/content/Context;)V

    #@7c
    .line 350
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createShapeValueAnimator()V

    #@7f
    .line 353
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_elevation:I

    #@81
    invoke-virtual {v5, p2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@84
    move-result p2

    #@85
    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    #@87
    .line 356
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxWidth:I

    #@89
    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@8c
    move-result p2

    #@8d
    if-eqz p2, :cond_98

    #@8f
    .line 357
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxWidth:I

    #@91
    .line 358
    invoke-virtual {v5, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@94
    move-result p2

    #@95
    .line 357
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxWidth(I)V

    #@98
    .line 362
    :cond_98
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxHeight:I

    #@9a
    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@9d
    move-result p2

    #@9e
    if-eqz p2, :cond_a9

    #@a0
    .line 363
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_maxHeight:I

    #@a2
    .line 364
    invoke-virtual {v5, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@a5
    move-result p2

    #@a6
    .line 363
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxHeight(I)V

    #@a9
    .line 368
    :cond_a9
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    #@ab
    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@ae
    move-result-object p2

    #@af
    if-eqz p2, :cond_bb

    #@b1
    .line 369
    iget v4, p2, Landroid/util/TypedValue;->data:I

    #@b3
    if-ne v4, v2, :cond_bb

    #@b5
    .line 370
    iget p2, p2, Landroid/util/TypedValue;->data:I

    #@b7
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    #@ba
    goto :goto_c4

    #@bb
    .line 372
    :cond_bb
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    #@bd
    .line 373
    invoke-virtual {v5, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@c0
    move-result p2

    #@c1
    .line 372
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    #@c4
    .line 376
    :goto_c4
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    #@c6
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c9
    move-result p2

    #@ca
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    #@cd
    .line 377
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_gestureInsetBottomIgnored:I

    #@cf
    .line 378
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d2
    move-result p2

    #@d3
    .line 377
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    #@d6
    .line 379
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    #@d8
    .line 380
    invoke-virtual {v5, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@db
    move-result p2

    #@dc
    .line 379
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    #@df
    .line 381
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    #@e1
    .line 382
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@e4
    move-result p2

    #@e5
    .line 381
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    #@e8
    .line 383
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_draggable:I

    #@ea
    invoke-virtual {v5, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ed
    move-result p2

    #@ee
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    #@f1
    .line 384
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_saveFlags:I

    #@f3
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f6
    move-result p2

    #@f7
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSaveFlags(I)V

    #@fa
    .line 385
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I

    #@fc
    .line 386
    invoke-virtual {v5, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@ff
    move-result p2

    #@100
    .line 385
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHalfExpandedRatio(F)V

    #@103
    .line 388
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    #@105
    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@108
    move-result-object p2

    #@109
    if-eqz p2, :cond_117

    #@10b
    .line 389
    iget v2, p2, Landroid/util/TypedValue;->type:I

    #@10d
    const/16 v3, 0x10

    #@10f
    if-ne v2, v3, :cond_117

    #@111
    .line 390
    iget p2, p2, Landroid/util/TypedValue;->data:I

    #@113
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    #@116
    goto :goto_120

    #@117
    .line 392
    :cond_117
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    #@119
    .line 393
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@11c
    move-result p2

    #@11d
    .line 392
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setExpandedOffset(I)V

    #@120
    .line 397
    :goto_120
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_significantVelocityThreshold:I

    #@122
    const/16 v2, 0x1f4

    #@124
    .line 398
    invoke-virtual {v5, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@127
    move-result p2

    #@128
    .line 397
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSignificantVelocityThreshold(I)V

    #@12b
    .line 403
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets:I

    #@12d
    .line 404
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@130
    move-result p2

    #@131
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    #@133
    .line 405
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets:I

    #@135
    .line 406
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@138
    move-result p2

    #@139
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    #@13b
    .line 407
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingRightSystemWindowInsets:I

    #@13d
    .line 408
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@140
    move-result p2

    #@141
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    #@143
    .line 411
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_paddingTopSystemWindowInsets:I

    #@145
    .line 412
    invoke-virtual {v5, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@148
    move-result p2

    #@149
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    #@14b
    .line 413
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_marginLeftSystemWindowInsets:I

    #@14d
    .line 414
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@150
    move-result p2

    #@151
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    #@153
    .line 415
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_marginRightSystemWindowInsets:I

    #@155
    .line 416
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@158
    move-result p2

    #@159
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    #@15b
    .line 417
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_marginTopSystemWindowInsets:I

    #@15d
    .line 418
    invoke-virtual {v5, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@160
    move-result p2

    #@161
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    #@163
    .line 419
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_shouldRemoveExpandedCorners:I

    #@165
    .line 420
    invoke-virtual {v5, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@168
    move-result p2

    #@169
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldRemoveExpandedCorners:Z

    #@16b
    .line 422
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@16e
    .line 423
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@171
    move-result-object p1

    #@172
    .line 424
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@175
    move-result p1

    #@176
    int-to-float p1, p1

    #@177
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    #@179
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;IZ)V
    .registers 4

    #@0
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    #@3
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    #@0
    .line 87
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    #@2
    return p0
.end method

.method static synthetic access$1102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .registers 2

    #@0
    .line 87
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    #@2
    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .registers 2

    #@0
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    #@3
    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    #@0
    .line 87
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    #@2
    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    #@0
    .line 87
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@2
    return p0
.end method

.method static synthetic access$1500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .registers 1

    #@0
    .line 87
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->significantVelocityThreshold:I

    #@2
    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    #@0
    .line 87
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->canBeHiddenByDragging()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$1900(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .registers 1

    #@0
    .line 87
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    #@2
    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 1

    #@0
    .line 87
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    #@0
    .line 87
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    #@2
    return p0
.end method

.method static synthetic access$302(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .registers 2

    #@0
    .line 87
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    #@2
    return p1
.end method

.method static synthetic access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    #@0
    .line 87
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    #@2
    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I
    .registers 1

    #@0
    .line 87
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    #@2
    return p0
.end method

.method static synthetic access$502(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I
    .registers 2

    #@0
    .line 87
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    #@2
    return p1
.end method

.method static synthetic access$600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    #@0
    .line 87
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    #@2
    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    #@0
    .line 87
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    #@2
    return p0
.end method

.method static synthetic access$800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    #@0
    .line 87
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    #@2
    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z
    .registers 1

    #@0
    .line 87
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    #@2
    return p0
.end method

.method private addAccessibilityActionForState(Landroid/view/View;II)I
    .registers 5

    #@0
    .line 2261
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    .line 2262
    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    #@b
    move-result-object p3

    #@c
    .line 2259
    invoke-static {p1, p2, p3}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method private calculateCollapsedOffset()V
    .registers 3

    #@0
    .line 1440
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    #@3
    move-result v0

    #@4
    .line 1442
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@6
    if-eqz v1, :cond_14

    #@8
    .line 1443
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@a
    sub-int/2addr v1, v0

    #@b
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    #@d
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v0

    #@11
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@13
    goto :goto_19

    #@14
    .line 1445
    :cond_14
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@16
    sub-int/2addr v1, v0

    #@17
    iput v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@19
    :goto_19
    return-void
.end method

.method private calculateHalfExpandedOffset()V
    .registers 4

    #@0
    .line 1450
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@2
    int-to-float v0, v0

    #@3
    const/high16 v1, 0x3f800000    # 1.0f

    #@5
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    #@7
    sub-float/2addr v1, v2

    #@8
    mul-float/2addr v0, v1

    #@9
    float-to-int v0, v0

    #@a
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@c
    return-void
.end method

.method private calculatePeekHeight()I
    .registers 4

    #@0
    .line 1427
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    #@2
    if-eqz v0, :cond_1d

    #@4
    .line 1428
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    #@6
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@8
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    #@a
    mul-int/lit8 v2, v2, 0x9

    #@c
    div-int/lit8 v2, v2, 0x10

    #@e
    sub-int/2addr v1, v2

    #@f
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@12
    move-result v0

    #@13
    .line 1429
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    #@15
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@18
    move-result v0

    #@19
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    #@1b
    add-int/2addr v0, v1

    #@1c
    return v0

    #@1d
    .line 1433
    :cond_1d
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    #@1f
    if-nez v0, :cond_33

    #@21
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    #@23
    if-nez v0, :cond_33

    #@25
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    #@27
    if-lez v0, :cond_33

    #@29
    .line 1434
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    #@2b
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightGestureInsetBuffer:I

    #@2d
    add-int/2addr v0, v2

    #@2e
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@31
    move-result v0

    #@32
    return v0

    #@33
    .line 1436
    :cond_33
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    #@35
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    #@37
    add-int/2addr v0, v1

    #@38
    return v0
.end method

.method private calculateSlideOffsetWithTop(I)F
    .registers 4

    #@0
    .line 1455
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@2
    if-gt p1, v0, :cond_17

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_b

    #@a
    goto :goto_17

    #@b
    .line 1457
    :cond_b
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@d
    sub-int p1, v0, p1

    #@f
    int-to-float p1, p1

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@13
    move-result v1

    #@14
    sub-int/2addr v0, v1

    #@15
    int-to-float v0, v0

    #@16
    goto :goto_20

    #@17
    .line 1456
    :cond_17
    :goto_17
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@19
    sub-int p1, v0, p1

    #@1b
    int-to-float p1, p1

    #@1c
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@1e
    sub-int/2addr v1, v0

    #@1f
    int-to-float v0, v1

    #@20
    :goto_20
    div-float/2addr p1, v0

    #@21
    return p1
.end method

.method private canBeHiddenByDragging()Z
    .registers 2

    #@0
    .line 1931
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideableWhenDragging()Z

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

.method private clearAccessibilityAction(Landroid/view/View;I)V
    .registers 5

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const/high16 v0, 0x80000

    #@5
    .line 2240
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@8
    const/high16 v0, 0x40000

    #@a
    .line 2241
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@d
    const/high16 v0, 0x100000

    #@f
    .line 2242
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@12
    .line 2244
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    #@14
    const/4 v1, -0x1

    #@15
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@18
    move-result v0

    #@19
    if-eq v0, v1, :cond_23

    #@1b
    .line 2246
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@1e
    .line 2247
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    #@20
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    #@23
    :cond_23
    return-void
.end method

.method private createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;
    .registers 3

    #@0
    .line 2266
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V

    #@5
    return-object v0
.end method

.method private createMaterialShapeDrawableIfNeeded(Landroid/content/Context;)V
    .registers 5

    #@0
    .line 1532
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 1536
    :cond_5
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@7
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@9
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@c
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@e
    .line 1537
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@11
    .line 1539
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    #@13
    if-eqz v0, :cond_1b

    #@15
    .line 1540
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@17
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@1a
    goto :goto_32

    #@1b
    .line 1543
    :cond_1b
    new-instance v0, Landroid/util/TypedValue;

    #@1d
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@20
    .line 1544
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@23
    move-result-object p1

    #@24
    const v1, 0x1010031

    #@27
    const/4 v2, 0x1

    #@28
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@2b
    .line 1545
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2d
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@2f
    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    #@32
    :goto_32
    return-void
.end method

.method private createShapeValueAnimator()V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    .line 1554
    fill-array-data v0, :array_1c

    #@6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    #@c
    const-wide/16 v1, 0x1f4

    #@e
    .line 1555
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@11
    .line 1556
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    #@13
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;

    #@15
    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    #@18
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@1b
    return-void

    #@1c
    :array_1c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    #@0
    .line 2088
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p0

    #@4
    .line 2089
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@6
    if-eqz v0, :cond_1d

    #@8
    .line 2092
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@a
    .line 2093
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    #@d
    move-result-object p0

    #@e
    .line 2094
    instance-of v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@10
    if-eqz v0, :cond_15

    #@12
    .line 2097
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@14
    return-object p0

    #@15
    .line 2095
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string v0, "The view is not associated with BottomSheetBehavior"

    #@19
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw p0

    #@1d
    .line 2090
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string v0, "The view is not a child of CoordinatorLayout"

    #@21
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw p0
.end method

.method private getChildMeasureSpec(IIII)I
    .registers 5

    #@0
    .line 502
    invoke-static {p1, p2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@3
    move-result p1

    #@4
    const/4 p2, -0x1

    #@5
    if-ne p3, p2, :cond_8

    #@7
    return p1

    #@8
    .line 506
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result p2

    #@c
    .line 507
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result p1

    #@10
    const/high16 p4, 0x40000000    # 2.0f

    #@12
    if-eq p2, p4, :cond_22

    #@14
    if-nez p1, :cond_17

    #@16
    goto :goto_1b

    #@17
    .line 515
    :cond_17
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result p3

    #@1b
    :goto_1b
    const/high16 p1, -0x80000000

    #@1d
    .line 514
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@20
    move-result p1

    #@21
    return p1

    #@22
    .line 510
    :cond_22
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    #@25
    move-result p1

    #@26
    invoke-static {p1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@29
    move-result p1

    #@2a
    return p1
.end method

.method private getTopOffsetForState(I)I
    .registers 5

    #@0
    const/4 v0, 0x3

    #@1
    if-eq p1, v0, :cond_2a

    #@3
    const/4 v0, 0x4

    #@4
    if-eq p1, v0, :cond_27

    #@6
    const/4 v0, 0x5

    #@7
    if-eq p1, v0, :cond_24

    #@9
    const/4 v0, 0x6

    #@a
    if-ne p1, v0, :cond_f

    #@c
    .line 1689
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@e
    return p1

    #@f
    .line 1695
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    const-string v2, "Invalid state to get top offset: "

    #@15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object p1

    #@20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1691
    :cond_24
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@26
    return p1

    #@27
    .line 1685
    :cond_27
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@29
    return p1

    #@2a
    .line 1687
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@2d
    move-result p1

    #@2e
    return p1
.end method

.method private getYVelocity()F
    .registers 4

    #@0
    .line 1658
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    :cond_6
    const/16 v1, 0x3e8

    #@8
    .line 1661
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maximumVelocity:F

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@d
    .line 1662
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@f
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    #@11
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@14
    move-result v0

    #@15
    return v0
.end method

.method private isExpandedAndShouldRemoveCorners()Z
    .registers 3

    #@0
    .line 1423
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_11

    #@5
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldRemoveExpandedCorners:Z

    #@7
    if-nez v0, :cond_f

    #@9
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_11

    #@f
    :cond_f
    const/4 v0, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    :goto_12
    return v0
.end method

.method private isLayouting(Landroid/view/View;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    #@0
    .line 1324
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_14

    #@6
    .line 1325
    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_14

    #@12
    const/4 p1, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    :goto_15
    return p1
.end method

.method private replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 2254
    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    #@4
    move-result-object p3

    #@5
    .line 2253
    invoke-static {p1, p2, v0, p3}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    #@8
    return-void
.end method

.method private reset()V
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    .line 1461
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    #@3
    .line 1462
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@5
    if-eqz v0, :cond_d

    #@7
    .line 1463
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@a
    const/4 v0, 0x0

    #@b
    .line 1464
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@d
    :cond_d
    return-void
.end method

.method private restoreOptionalState(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V
    .registers 5

    #@0
    .line 1469
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v1, -0x1

    #@6
    if-eq v0, v1, :cond_c

    #@8
    const/4 v2, 0x1

    #@9
    and-int/2addr v0, v2

    #@a
    if-ne v0, v2, :cond_10

    #@c
    .line 1473
    :cond_c
    iget v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->peekHeight:I

    #@e
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    #@10
    .line 1475
    :cond_10
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    #@12
    if-eq v0, v1, :cond_18

    #@14
    const/4 v2, 0x2

    #@15
    and-int/2addr v0, v2

    #@16
    if-ne v0, v2, :cond_1c

    #@18
    .line 1477
    :cond_18
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->fitToContents:Z

    #@1a
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@1c
    .line 1479
    :cond_1c
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    #@1e
    if-eq v0, v1, :cond_24

    #@20
    const/4 v2, 0x4

    #@21
    and-int/2addr v0, v2

    #@22
    if-ne v0, v2, :cond_28

    #@24
    .line 1480
    :cond_24
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->hideable:Z

    #@26
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@28
    .line 1482
    :cond_28
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    #@2a
    if-eq v0, v1, :cond_31

    #@2c
    const/16 v1, 0x8

    #@2e
    and-int/2addr v0, v1

    #@2f
    if-ne v0, v1, :cond_35

    #@31
    .line 1484
    :cond_31
    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    #@33
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    #@35
    :cond_35
    return-void
.end method

.method private runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    #@0
    .line 1316
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isLayouting(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 1317
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@9
    goto :goto_d

    #@a
    .line 1319
    :cond_a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    #@d
    :goto_d
    return-void
.end method

.method private setWindowInsetsListener(Landroid/view/View;)V
    .registers 4

    #@0
    .line 1571
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_12

    #@6
    .line 1572
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isGestureInsetBottomIgnored()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_12

    #@c
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    #@e
    if-nez v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    .line 1575
    :goto_13
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    #@15
    if-nez v1, :cond_2e

    #@17
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    #@19
    if-nez v1, :cond_2e

    #@1b
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    #@1d
    if-nez v1, :cond_2e

    #@1f
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    #@21
    if-nez v1, :cond_2e

    #@23
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    #@25
    if-nez v1, :cond_2e

    #@27
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    #@29
    if-nez v1, :cond_2e

    #@2b
    if-nez v0, :cond_2e

    #@2d
    return-void

    #@2e
    .line 1584
    :cond_2e
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;

    #@30
    invoke-direct {v1, p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    #@33
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    #@36
    return-void
.end method

.method private shouldHandleDraggingWithHelper()Z
    .registers 3

    #@0
    .line 1528
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    #@6
    const/4 v1, 0x1

    #@7
    if-nez v0, :cond_f

    #@9
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@b
    if-ne v0, v1, :cond_e

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v1, 0x0

    #@f
    :cond_f
    :goto_f
    return v1
.end method

.method private startSettling(Landroid/view/View;IZ)V
    .registers 7

    #@0
    .line 1666
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getTopOffsetForState(I)I

    #@3
    move-result v0

    #@4
    .line 1667
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@6
    const/4 v2, 0x1

    #@7
    if-eqz v1, :cond_22

    #@9
    if-eqz p3, :cond_16

    #@b
    .line 1670
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@e
    move-result p1

    #@f
    invoke-virtual {v1, p1, v0}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    #@12
    move-result p1

    #@13
    if-eqz p1, :cond_22

    #@15
    goto :goto_20

    #@16
    .line 1671
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@19
    move-result p3

    #@1a
    invoke-virtual {v1, p1, p3, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@1d
    move-result p1

    #@1e
    if-eqz p1, :cond_22

    #@20
    :goto_20
    move p1, v2

    #@21
    goto :goto_23

    #@22
    :cond_22
    const/4 p1, 0x0

    #@23
    :goto_23
    if-eqz p1, :cond_32

    #@25
    const/4 p1, 0x2

    #@26
    .line 1673
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    #@29
    .line 1675
    invoke-direct {p0, p2, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(IZ)V

    #@2c
    .line 1676
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;

    #@2e
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->continueSettlingToState(I)V

    #@31
    goto :goto_35

    #@32
    .line 1678
    :cond_32
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    #@35
    :goto_35
    return-void
.end method

.method private updateAccessibilityActions()V
    .registers 3

    #@0
    .line 2179
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 2180
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/view/View;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions(Landroid/view/View;I)V

    #@e
    .line 2182
    :cond_e
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    #@10
    if-eqz v0, :cond_1c

    #@12
    .line 2184
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/view/View;

    #@18
    const/4 v1, 0x1

    #@19
    .line 2183
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions(Landroid/view/View;I)V

    #@1c
    :cond_1c
    return-void
.end method

.method private updateAccessibilityActions(Landroid/view/View;I)V
    .registers 6

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 2192
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->clearAccessibilityAction(Landroid/view/View;I)V

    #@6
    .line 2194
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@8
    const/4 v1, 0x6

    #@9
    if-nez v0, :cond_1a

    #@b
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@d
    if-eq v0, v1, :cond_1a

    #@f
    .line 2195
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandHalfwayActionIds:Landroid/util/SparseIntArray;

    #@11
    sget v2, Lcom/google/android/material/R$string;->bottomsheet_action_expand_halfway:I

    #@13
    .line 2197
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;II)I

    #@16
    move-result v2

    #@17
    .line 2195
    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1a
    .line 2201
    :cond_1a
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@1c
    if-eqz p2, :cond_2e

    #@1e
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideableWhenDragging()Z

    #@21
    move-result p2

    #@22
    if-eqz p2, :cond_2e

    #@24
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@26
    const/4 v0, 0x5

    #@27
    if-eq p2, v0, :cond_2e

    #@29
    .line 2202
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@2b
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    #@2e
    .line 2206
    :cond_2e
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@30
    const/4 v0, 0x4

    #@31
    const/4 v2, 0x3

    #@32
    if-eq p2, v2, :cond_4f

    #@34
    if-eq p2, v0, :cond_44

    #@36
    if-eq p2, v1, :cond_39

    #@38
    goto :goto_59

    #@39
    .line 2216
    :cond_39
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@3b
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    #@3e
    .line 2218
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@40
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    #@43
    goto :goto_59

    #@44
    .line 2224
    :cond_44
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@46
    if-eqz p2, :cond_49

    #@48
    move v1, v2

    #@49
    .line 2225
    :cond_49
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@4b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    #@4e
    goto :goto_59

    #@4f
    .line 2209
    :cond_4f
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@51
    if-eqz p2, :cond_54

    #@53
    move v1, v0

    #@54
    .line 2210
    :cond_54
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@56
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    #@59
    :goto_59
    return-void
.end method

.method private updateDrawableForTargetState(IZ)V
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_4

    #@3
    return-void

    #@4
    .line 1399
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isExpandedAndShouldRemoveCorners()Z

    #@7
    move-result p1

    #@8
    .line 1400
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedCornersRemoved:Z

    #@a
    if-eq v1, p1, :cond_5a

    #@c
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@e
    if-nez v1, :cond_11

    #@10
    goto :goto_5a

    #@11
    .line 1403
    :cond_11
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedCornersRemoved:Z

    #@13
    const/4 v1, 0x0

    #@14
    const/high16 v2, 0x3f800000    # 1.0f

    #@16
    if-eqz p2, :cond_40

    #@18
    .line 1404
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    #@1a
    if-eqz p2, :cond_40

    #@1c
    .line 1405
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@1f
    move-result p2

    #@20
    if-eqz p2, :cond_28

    #@22
    .line 1406
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    #@24
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    #@27
    goto :goto_5a

    #@28
    :cond_28
    if-eqz p1, :cond_2b

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    move v1, v2

    #@2c
    :goto_2c
    sub-float/2addr v2, v1

    #@2d
    .line 1410
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    #@2f
    new-array p2, v0, [F

    #@31
    const/4 v0, 0x0

    #@32
    aput v2, p2, v0

    #@34
    const/4 v0, 0x1

    #@35
    aput v1, p2, v0

    #@37
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@3a
    .line 1411
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    #@3c
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@3f
    goto :goto_5a

    #@40
    .line 1414
    :cond_40
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    #@42
    if-eqz p1, :cond_4f

    #@44
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    #@47
    move-result p1

    #@48
    if-eqz p1, :cond_4f

    #@4a
    .line 1415
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    #@4c
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    #@4f
    .line 1417
    :cond_4f
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@51
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedCornersRemoved:Z

    #@53
    if-eqz p2, :cond_56

    #@55
    goto :goto_57

    #@56
    :cond_56
    move v1, v2

    #@57
    :goto_57
    invoke-virtual {p1, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    #@5a
    :cond_5a
    :goto_5a
    return-void
.end method

.method private updateImportantForAccessibility(Z)V
    .registers 8

    #@0
    .line 2113
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 2117
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/view/View;

    #@b
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@e
    move-result-object v0

    #@f
    .line 2118
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@11
    if-nez v1, :cond_14

    #@13
    return-void

    #@14
    .line 2122
    :cond_14
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    #@16
    .line 2123
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    #@19
    move-result v1

    #@1a
    if-eqz p1, :cond_29

    #@1c
    .line 2125
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@1e
    if-nez v2, :cond_28

    #@20
    .line 2126
    new-instance v2, Ljava/util/HashMap;

    #@22
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    #@25
    iput-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@27
    goto :goto_29

    #@28
    :cond_28
    return-void

    #@29
    :cond_29
    :goto_29
    const/4 v2, 0x0

    #@2a
    :goto_2a
    if-ge v2, v1, :cond_71

    #@2c
    .line 2134
    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    #@2f
    move-result-object v3

    #@30
    .line 2135
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@32
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    if-ne v3, v4, :cond_39

    #@38
    goto :goto_6e

    #@39
    :cond_39
    if-eqz p1, :cond_51

    #@3b
    .line 2142
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@3d
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    #@40
    move-result v5

    #@41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v5

    #@45
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 2144
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    #@4a
    if-eqz v4, :cond_6e

    #@4c
    const/4 v4, 0x4

    #@4d
    .line 2145
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@50
    goto :goto_6e

    #@51
    .line 2149
    :cond_51
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    #@53
    if-eqz v4, :cond_6e

    #@55
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@57
    if-eqz v4, :cond_6e

    #@59
    .line 2151
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5c
    move-result v4

    #@5d
    if-eqz v4, :cond_6e

    #@5f
    .line 2153
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@61
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v4

    #@65
    check-cast v4, Ljava/lang/Integer;

    #@67
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@6a
    move-result v4

    #@6b
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@6e
    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    #@70
    goto :goto_2a

    #@71
    :cond_71
    if-nez p1, :cond_77

    #@73
    const/4 p1, 0x0

    #@74
    .line 2159
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    #@76
    goto :goto_88

    #@77
    .line 2160
    :cond_77
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    #@79
    if-eqz p1, :cond_88

    #@7b
    .line 2163
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@7d
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@80
    move-result-object p1

    #@81
    check-cast p1, Landroid/view/View;

    #@83
    const/16 v0, 0x8

    #@85
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@88
    :cond_88
    :goto_88
    return-void
.end method

.method private updatePeekHeight(Z)V
    .registers 4

    #@0
    .line 987
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_1f

    #@4
    .line 988
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    #@7
    .line 989
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@9
    const/4 v1, 0x4

    #@a
    if-ne v0, v1, :cond_1f

    #@c
    .line 990
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@e
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/View;

    #@14
    if-eqz v0, :cond_1f

    #@16
    if-eqz p1, :cond_1c

    #@18
    .line 993
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    #@1b
    goto :goto_1f

    #@1c
    .line 995
    :cond_1c
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    #@1f
    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 3

    #@0
    .line 1258
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    .line 1259
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    :cond_d
    return-void
.end method

.method public calculateSlideOffset()F
    .registers 2

    #@0
    .line 1091
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_1c

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_b

    #@a
    goto :goto_1c

    #@b
    .line 1095
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@d
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/view/View;

    #@13
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@16
    move-result v0

    #@17
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateSlideOffsetWithTop(I)F

    #@1a
    move-result v0

    #@1b
    return v0

    #@1c
    :cond_1c
    :goto_1c
    const/high16 v0, -0x40800000    # -1.0f

    #@1e
    return v0
.end method

.method public disableShapeAnimations()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1885
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    #@3
    return-void
.end method

.method dispatchOnSlide(I)V
    .registers 5

    #@0
    .line 1860
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    if-eqz v0, :cond_2d

    #@a
    .line 1861
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_2d

    #@12
    .line 1862
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateSlideOffsetWithTop(I)F

    #@15
    move-result p1

    #@16
    const/4 v1, 0x0

    #@17
    .line 1863
    :goto_17
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v2

    #@1d
    if-ge v1, v2, :cond_2d

    #@1f
    .line 1864
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    #@27
    invoke-virtual {v2, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_17

    #@2d
    :cond_2d
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .registers 6

    #@0
    .line 1507
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 1510
    :cond_8
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_f

    #@e
    return-object p1

    #@f
    .line 1513
    :cond_f
    instance-of v0, p1, Landroid/view/ViewGroup;

    #@11
    if-eqz v0, :cond_2a

    #@13
    .line 1514
    check-cast p1, Landroid/view/ViewGroup;

    #@15
    .line 1515
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@18
    move-result v0

    #@19
    const/4 v2, 0x0

    #@1a
    :goto_1a
    if-ge v2, v0, :cond_2a

    #@1c
    .line 1516
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    #@23
    move-result-object v3

    #@24
    if-eqz v3, :cond_27

    #@26
    return-object v3

    #@27
    :cond_27
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_1a

    #@2a
    :cond_2a
    return-object v1
.end method

.method public getExpandedOffset()I
    .registers 3

    #@0
    .line 1075
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1076
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    #@6
    goto :goto_15

    #@7
    .line 1077
    :cond_7
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    #@9
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    #@b
    if-eqz v1, :cond_f

    #@d
    const/4 v1, 0x0

    #@e
    goto :goto_11

    #@f
    :cond_f
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    #@11
    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v0

    #@15
    :goto_15
    return v0
.end method

.method public getHalfExpandedRatio()F
    .registers 2

    #@0
    .line 1046
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    #@2
    return v0
.end method

.method public getHideFriction()F
    .registers 2

    #@0
    .line 1227
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideFriction:F

    #@2
    return v0
.end method

.method public getLastStableState()I
    .registers 2

    #@0
    .line 1969
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    #@2
    return v0
.end method

.method getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 2

    #@0
    .line 1550
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    return-object v0
.end method

.method public getMaxHeight()I
    .registers 2

    #@0
    .line 942
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    #@2
    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    #@0
    .line 919
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    #@2
    return v0
.end method

.method public getPeekHeight()I
    .registers 2

    #@0
    .line 1011
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, -0x1

    #@5
    goto :goto_8

    #@6
    :cond_6
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    #@8
    :goto_8
    return v0
.end method

.method getPeekHeightMin()I
    .registers 2

    #@0
    .line 1871
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    #@2
    return v0
.end method

.method public getSaveFlags()I
    .registers 2

    #@0
    .line 1205
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    #@2
    return v0
.end method

.method public getSignificantVelocityThreshold()I
    .registers 2

    #@0
    .line 1183
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->significantVelocityThreshold:I

    #@2
    return v0
.end method

.method public getSkipCollapsed()Z
    .registers 2

    #@0
    .line 1146
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    #@2
    return v0
.end method

.method public getState()I
    .registers 2

    #@0
    .line 1356
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@2
    return v0
.end method

.method public isDraggable()Z
    .registers 2

    #@0
    .line 1161
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    #@2
    return v0
.end method

.method public isFitToContents()Z
    .registers 2

    #@0
    .line 870
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@2
    return v0
.end method

.method public isGestureInsetBottomIgnored()Z
    .registers 2

    #@0
    .line 1345
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    #@2
    return v0
.end method

.method public isHideable()Z
    .registers 2

    #@0
    .line 1122
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@2
    return v0
.end method

.method public isHideableWhenDragging()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isNestedScrollingCheckEnabled()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .registers 2

    #@0
    .line 452
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 455
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@6
    .line 456
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@8
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .registers 2

    #@0
    .line 461
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 463
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@6
    .line 464
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@8
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    #@0
    .line 598
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    if-eqz v0, :cond_d2

    #@8
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    #@a
    if-nez v0, :cond_e

    #@c
    goto/16 :goto_d2

    #@e
    .line 602
    :cond_e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_17

    #@14
    .line 605
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    #@17
    .line 607
    :cond_17
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@19
    if-nez v3, :cond_21

    #@1b
    .line 608
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@1e
    move-result-object v3

    #@1f
    iput-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@21
    .line 610
    :cond_21
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@23
    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@26
    const/4 v3, 0x0

    #@27
    const/4 v4, -0x1

    #@28
    const/4 v5, 0x2

    #@29
    if-eqz v0, :cond_3c

    #@2b
    if-eq v0, v2, :cond_31

    #@2d
    const/4 p2, 0x3

    #@2e
    if-eq v0, p2, :cond_31

    #@30
    goto :goto_7f

    #@31
    .line 614
    :cond_31
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    #@33
    .line 615
    iput v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    #@35
    .line 617
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    #@37
    if-eqz p2, :cond_7f

    #@39
    .line 618
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    #@3b
    return v1

    #@3c
    .line 623
    :cond_3c
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@3f
    move-result v6

    #@40
    float-to-int v6, v6

    #@41
    .line 624
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@44
    move-result v7

    #@45
    float-to-int v7, v7

    #@46
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    #@48
    .line 627
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@4a
    if-eq v7, v5, :cond_6e

    #@4c
    .line 628
    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@4e
    if-eqz v7, :cond_57

    #@50
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@53
    move-result-object v7

    #@54
    check-cast v7, Landroid/view/View;

    #@56
    goto :goto_58

    #@57
    :cond_57
    move-object v7, v3

    #@58
    :goto_58
    if-eqz v7, :cond_6e

    #@5a
    .line 629
    iget v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    #@5c
    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    #@5f
    move-result v7

    #@60
    if-eqz v7, :cond_6e

    #@62
    .line 630
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    #@65
    move-result v7

    #@66
    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@69
    move-result v7

    #@6a
    iput v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    #@6c
    .line 631
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    #@6e
    .line 634
    :cond_6e
    iget v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    #@70
    if-ne v7, v4, :cond_7c

    #@72
    iget v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    #@74
    .line 636
    invoke-virtual {p1, p2, v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    #@77
    move-result p2

    #@78
    if-nez p2, :cond_7c

    #@7a
    move p2, v2

    #@7b
    goto :goto_7d

    #@7c
    :cond_7c
    move p2, v1

    #@7d
    :goto_7d
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    #@7f
    .line 640
    :cond_7f
    :goto_7f
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    #@81
    if-nez p2, :cond_8e

    #@83
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@85
    if-eqz p2, :cond_8e

    #@87
    .line 642
    invoke-virtual {p2, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@8a
    move-result p2

    #@8b
    if-eqz p2, :cond_8e

    #@8d
    return v2

    #@8e
    .line 648
    :cond_8e
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@90
    if-eqz p2, :cond_99

    #@92
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@95
    move-result-object p2

    #@96
    move-object v3, p2

    #@97
    check-cast v3, Landroid/view/View;

    #@99
    :cond_99
    if-ne v0, v5, :cond_d1

    #@9b
    if-eqz v3, :cond_d1

    #@9d
    .line 649
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    #@9f
    if-nez p2, :cond_d1

    #@a1
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@a3
    if-eq p2, v2, :cond_d1

    #@a5
    .line 653
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    #@a8
    move-result p2

    #@a9
    float-to-int p2, p2

    #@aa
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@ad
    move-result v0

    #@ae
    float-to-int v0, v0

    #@af
    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    #@b2
    move-result p1

    #@b3
    if-nez p1, :cond_d1

    #@b5
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@b7
    if-eqz p1, :cond_d1

    #@b9
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    #@bb
    int-to-float p1, p1

    #@bc
    .line 655
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@bf
    move-result p2

    #@c0
    sub-float/2addr p1, p2

    #@c1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@c4
    move-result p1

    #@c5
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@c7
    invoke-virtual {p2}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    #@ca
    move-result p2

    #@cb
    int-to-float p2, p2

    #@cc
    cmpl-float p1, p1, p2

    #@ce
    if-lez p1, :cond_d1

    #@d0
    move v1, v2

    #@d1
    :cond_d1
    return v1

    #@d2
    .line 599
    :cond_d2
    :goto_d2
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    #@d4
    return v1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    #@0
    .line 523
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_10

    #@7
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_10

    #@d
    .line 524
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    #@10
    .line 527
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@12
    if-nez v0, :cond_56

    #@14
    .line 530
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v0

    #@18
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_sheet_peek_height_min:I

    #@1a
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightMin:I

    #@20
    .line 531
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V

    #@23
    .line 532
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@25
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@28
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@2a
    .line 535
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2c
    if-eqz v0, :cond_43

    #@2e
    .line 536
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@31
    .line 538
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@33
    .line 539
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->elevation:F

    #@35
    const/high16 v3, -0x40800000    # -1.0f

    #@37
    cmpl-float v3, v2, v3

    #@39
    if-nez v3, :cond_3f

    #@3b
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@3e
    move-result v2

    #@3f
    .line 538
    :cond_3f
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@42
    goto :goto_4a

    #@43
    .line 540
    :cond_43
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    #@45
    if-eqz v0, :cond_4a

    #@47
    .line 541
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    #@4a
    .line 543
    :cond_4a
    :goto_4a
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    #@4d
    .line 544
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@50
    move-result v0

    #@51
    if-nez v0, :cond_56

    #@53
    .line 546
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@56
    .line 549
    :cond_56
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@58
    if-nez v0, :cond_62

    #@5a
    .line 550
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    #@5c
    invoke-static {p1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    #@5f
    move-result-object v0

    #@60
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@62
    .line 553
    :cond_62
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@65
    move-result v0

    #@66
    .line 555
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    #@69
    .line 557
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    #@6c
    move-result p3

    #@6d
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentWidth:I

    #@6f
    .line 558
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    #@72
    move-result p1

    #@73
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@75
    .line 559
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    #@78
    move-result p1

    #@79
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    #@7b
    .line 560
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@7d
    sub-int p1, p3, p1

    #@7f
    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    #@81
    if-ge p1, v2, :cond_8e

    #@83
    .line 561
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingTopSystemWindowInsets:Z

    #@85
    if-eqz p1, :cond_8a

    #@87
    .line 564
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    #@89
    goto :goto_8e

    #@8a
    :cond_8a
    sub-int p1, p3, v2

    #@8c
    .line 567
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    #@8e
    .line 570
    :cond_8e
    :goto_8e
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->childHeight:I

    #@90
    sub-int/2addr p3, p1

    #@91
    const/4 p1, 0x0

    #@92
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    #@95
    move-result p3

    #@96
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    #@98
    .line 571
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    #@9b
    .line 572
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    #@9e
    .line 574
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@a0
    const/4 v2, 0x3

    #@a1
    if-ne p3, v2, :cond_ab

    #@a3
    .line 575
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@a6
    move-result p3

    #@a7
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@aa
    goto :goto_d7

    #@ab
    :cond_ab
    const/4 v2, 0x6

    #@ac
    if-ne p3, v2, :cond_b4

    #@ae
    .line 577
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@b0
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@b3
    goto :goto_d7

    #@b4
    .line 578
    :cond_b4
    iget-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@b6
    if-eqz v2, :cond_c1

    #@b8
    const/4 v2, 0x5

    #@b9
    if-ne p3, v2, :cond_c1

    #@bb
    .line 579
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@bd
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@c0
    goto :goto_d7

    #@c1
    :cond_c1
    const/4 v2, 0x4

    #@c2
    if-ne p3, v2, :cond_ca

    #@c4
    .line 581
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@c6
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@c9
    goto :goto_d7

    #@ca
    :cond_ca
    if-eq p3, v1, :cond_cf

    #@cc
    const/4 v2, 0x2

    #@cd
    if-ne p3, v2, :cond_d7

    #@cf
    .line 583
    :cond_cf
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@d2
    move-result p3

    #@d3
    sub-int/2addr v0, p3

    #@d4
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@d7
    .line 585
    :cond_d7
    :goto_d7
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@d9
    invoke-direct {p0, p3, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(IZ)V

    #@dc
    .line 587
    new-instance p3, Ljava/lang/ref/WeakReference;

    #@de
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    #@e1
    move-result-object v0

    #@e2
    invoke-direct {p3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@e5
    iput-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@e7
    .line 589
    :goto_e7
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@e9
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@ec
    move-result p3

    #@ed
    if-ge p1, p3, :cond_fd

    #@ef
    .line 590
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@f1
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f4
    move-result-object p3

    #@f5
    check-cast p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    #@f7
    invoke-virtual {p3, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onLayout(Landroid/view/View;)V

    #@fa
    add-int/lit8 p1, p1, 0x1

    #@fc
    goto :goto_e7

    #@fd
    :cond_fd
    return v1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    #@0
    .line 475
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 479
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    #@9
    move-result v1

    #@a
    .line 480
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@11
    add-int/2addr v1, v2

    #@12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@14
    add-int/2addr v1, v2

    #@15
    add-int/2addr v1, p4

    #@16
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    #@18
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@1a
    .line 477
    invoke-direct {p0, p3, v1, p4, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    #@1d
    move-result p3

    #@1e
    .line 489
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    #@21
    move-result p4

    #@22
    .line 490
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    #@25
    move-result p1

    #@26
    add-int/2addr p4, p1

    #@27
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@29
    add-int/2addr p4, p1

    #@2a
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@2c
    add-int/2addr p4, p1

    #@2d
    add-int/2addr p4, p6

    #@2e
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    #@30
    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    #@32
    .line 487
    invoke-direct {p0, p5, p4, p1, p6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getChildMeasureSpec(IIII)I

    #@35
    move-result p1

    #@36
    .line 496
    invoke-virtual {p2, p3, p1}, Landroid/view/View;->measure(II)V

    #@39
    const/4 p1, 0x1

    #@3a
    return p1
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    #@0
    .line 855
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_1d

    #@7
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@9
    if-eqz v0, :cond_1d

    #@b
    .line 856
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    if-ne p3, v0, :cond_1d

    #@11
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@13
    const/4 v2, 0x3

    #@14
    if-ne v0, v2, :cond_1c

    #@16
    .line 858
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    #@19
    move-result p1

    #@1a
    if-eqz p1, :cond_1d

    #@1c
    :cond_1c
    const/4 v1, 0x1

    #@1d
    :cond_1d
    return v1
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    #@0
    const/4 p1, 0x1

    #@1
    if-ne p7, p1, :cond_4

    #@3
    return-void

    #@4
    .line 715
    :cond_4
    iget-object p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@6
    if-eqz p4, :cond_f

    #@8
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@b
    move-result-object p4

    #@c
    check-cast p4, Landroid/view/View;

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 p4, 0x0

    #@10
    .line 716
    :goto_10
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    #@13
    move-result p7

    #@14
    if-eqz p7, :cond_19

    #@16
    if-eq p3, p4, :cond_19

    #@18
    return-void

    #@19
    .line 719
    :cond_19
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@1c
    move-result p4

    #@1d
    sub-int p7, p4, p5

    #@1f
    if-lez p5, :cond_46

    #@21
    .line 722
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@24
    move-result p3

    #@25
    if-ge p7, p3, :cond_37

    #@27
    .line 723
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@2a
    move-result p3

    #@2b
    sub-int/2addr p4, p3

    #@2c
    aput p4, p6, p1

    #@2e
    neg-int p3, p4

    #@2f
    .line 724
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@32
    const/4 p3, 0x3

    #@33
    .line 725
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    #@36
    goto :goto_76

    #@37
    .line 727
    :cond_37
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    #@39
    if-nez p3, :cond_3c

    #@3b
    return-void

    #@3c
    .line 732
    :cond_3c
    aput p5, p6, p1

    #@3e
    neg-int p3, p5

    #@3f
    .line 733
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@42
    .line 734
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    #@45
    goto :goto_76

    #@46
    :cond_46
    if-gez p5, :cond_76

    #@48
    const/4 v0, -0x1

    #@49
    .line 737
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    #@4c
    move-result p3

    #@4d
    if-nez p3, :cond_76

    #@4f
    .line 738
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@51
    if-le p7, p3, :cond_68

    #@53
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->canBeHiddenByDragging()Z

    #@56
    move-result p3

    #@57
    if-eqz p3, :cond_5a

    #@59
    goto :goto_68

    #@5a
    .line 748
    :cond_5a
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@5c
    sub-int/2addr p4, p3

    #@5d
    aput p4, p6, p1

    #@5f
    neg-int p3, p4

    #@60
    .line 749
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@63
    const/4 p3, 0x4

    #@64
    .line 750
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    #@67
    goto :goto_76

    #@68
    .line 739
    :cond_68
    :goto_68
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    #@6a
    if-nez p3, :cond_6d

    #@6c
    return-void

    #@6d
    .line 744
    :cond_6d
    aput p5, p6, p1

    #@6f
    neg-int p3, p5

    #@70
    .line 745
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@73
    .line 746
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    #@76
    .line 754
    :cond_76
    :goto_76
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@79
    move-result p2

    #@7a
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    #@7d
    .line 755
    iput p5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    #@7f
    .line 756
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    #@81
    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    #@0
    .line 436
    check-cast p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    #@2
    .line 437
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    invoke-super {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    #@9
    .line 439
    invoke-direct {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->restoreOptionalState(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;)V

    #@c
    .line 441
    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    #@e
    const/4 p2, 0x1

    #@f
    if-eq p1, p2, :cond_1e

    #@11
    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    #@13
    const/4 p2, 0x2

    #@14
    if-ne p1, p2, :cond_17

    #@16
    goto :goto_1e

    #@17
    .line 445
    :cond_17
    iget p1, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;->state:I

    #@19
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@1b
    .line 446
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    #@1d
    goto :goto_23

    #@1e
    :cond_1e
    :goto_1e
    const/4 p1, 0x4

    #@1f
    .line 442
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@21
    .line 443
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    #@23
    :goto_23
    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    #@0
    .line 430
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;

    #@2
    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    #@5
    move-result-object p1

    #@6
    invoke-direct {v0, p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    #@9
    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    .line 697
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    #@3
    .line 698
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    #@5
    and-int/lit8 p2, p5, 0x2

    #@7
    if-eqz p2, :cond_a

    #@9
    const/4 p1, 0x1

    #@a
    :cond_a
    return p1
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    #@0
    .line 765
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@3
    move-result p1

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@7
    move-result p4

    #@8
    const/4 v0, 0x3

    #@9
    if-ne p1, p4, :cond_f

    #@b
    .line 766
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    #@e
    return-void

    #@f
    .line 769
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isNestedScrollingCheckEnabled()Z

    #@12
    move-result p1

    #@13
    if-eqz p1, :cond_24

    #@15
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@17
    if-eqz p1, :cond_23

    #@19
    .line 771
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1c
    move-result-object p1

    #@1d
    if-ne p3, p1, :cond_23

    #@1f
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    #@21
    if-nez p1, :cond_24

    #@23
    :cond_23
    return-void

    #@24
    .line 776
    :cond_24
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    #@26
    const/4 p3, 0x6

    #@27
    if-lez p1, :cond_39

    #@29
    .line 777
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@2b
    if-eqz p1, :cond_2f

    #@2d
    goto/16 :goto_aa

    #@2f
    .line 780
    :cond_2f
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@32
    move-result p1

    #@33
    .line 781
    iget p4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@35
    if-le p1, p4, :cond_aa

    #@37
    goto/16 :goto_a9

    #@39
    .line 787
    :cond_39
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@3b
    if-eqz p1, :cond_49

    #@3d
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getYVelocity()F

    #@40
    move-result p1

    #@41
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    #@44
    move-result p1

    #@45
    if-eqz p1, :cond_49

    #@47
    const/4 v0, 0x5

    #@48
    goto :goto_aa

    #@49
    .line 789
    :cond_49
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastNestedScrollDy:I

    #@4b
    const/4 p4, 0x4

    #@4c
    if-nez p1, :cond_8e

    #@4e
    .line 790
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@51
    move-result p1

    #@52
    .line 791
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@54
    if-eqz v1, :cond_68

    #@56
    .line 792
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    #@58
    sub-int p3, p1, p3

    #@5a
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@5d
    move-result p3

    #@5e
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@60
    sub-int/2addr p1, v1

    #@61
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@64
    move-result p1

    #@65
    if-ge p3, p1, :cond_92

    #@67
    goto :goto_aa

    #@68
    .line 798
    :cond_68
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@6a
    if-ge p1, v1, :cond_7e

    #@6c
    .line 799
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@6e
    sub-int v1, p1, v1

    #@70
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@73
    move-result v1

    #@74
    if-ge p1, v1, :cond_77

    #@76
    goto :goto_aa

    #@77
    .line 802
    :cond_77
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    #@7a
    move-result p1

    #@7b
    if-eqz p1, :cond_a9

    #@7d
    goto :goto_92

    #@7e
    :cond_7e
    sub-int v0, p1, v1

    #@80
    .line 809
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@83
    move-result v0

    #@84
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@86
    sub-int/2addr p1, v1

    #@87
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@8a
    move-result p1

    #@8b
    if-ge v0, p1, :cond_92

    #@8d
    goto :goto_a9

    #@8e
    .line 817
    :cond_8e
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@90
    if-eqz p1, :cond_94

    #@92
    :cond_92
    :goto_92
    move v0, p4

    #@93
    goto :goto_aa

    #@94
    .line 821
    :cond_94
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@97
    move-result p1

    #@98
    .line 822
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@9a
    sub-int v0, p1, v0

    #@9c
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@9f
    move-result v0

    #@a0
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@a2
    sub-int/2addr p1, v1

    #@a3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@a6
    move-result p1

    #@a7
    if-ge v0, p1, :cond_92

    #@a9
    :cond_a9
    :goto_a9
    move v0, p3

    #@aa
    :cond_aa
    :goto_aa
    const/4 p1, 0x0

    #@ab
    .line 829
    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    #@ae
    .line 830
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrolled:Z

    #@b0
    return-void
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    #@0
    .line 661
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    #@3
    move-result p1

    #@4
    if-nez p1, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    .line 664
    :cond_8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result p1

    #@c
    .line 665
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@e
    const/4 v1, 0x1

    #@f
    if-ne v0, v1, :cond_14

    #@11
    if-nez p1, :cond_14

    #@13
    return v1

    #@14
    .line 668
    :cond_14
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHandleDraggingWithHelper()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1f

    #@1a
    .line 669
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@1c
    invoke-virtual {v0, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@1f
    :cond_1f
    if-nez p1, :cond_24

    #@21
    .line 673
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->reset()V

    #@24
    .line 675
    :cond_24
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@26
    if-nez v0, :cond_2e

    #@28
    .line 676
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@2e
    .line 678
    :cond_2e
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    #@30
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@33
    .line 681
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHandleDraggingWithHelper()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_64

    #@39
    const/4 v0, 0x2

    #@3a
    if-ne p1, v0, :cond_64

    #@3c
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    #@3e
    if-nez p1, :cond_64

    #@40
    .line 682
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->initialY:I

    #@42
    int-to-float p1, p1

    #@43
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@46
    move-result v0

    #@47
    sub-float/2addr p1, v0

    #@48
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@4b
    move-result p1

    #@4c
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@4e
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    #@51
    move-result v0

    #@52
    int-to-float v0, v0

    #@53
    cmpl-float p1, p1, v0

    #@55
    if-lez p1, :cond_64

    #@57
    .line 683
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@59
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    #@5c
    move-result v0

    #@5d
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@60
    move-result p3

    #@61
    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    #@64
    .line 686
    :cond_64
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ignoreEvents:Z

    #@66
    xor-int/2addr p1, v1

    #@67
    return p1
.end method

.method public removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 3

    #@0
    .line 1269
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method setAccessibilityDelegateView(Landroid/view/View;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p1, :cond_14

    #@3
    .line 2168
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    #@5
    if-eqz v1, :cond_14

    #@7
    .line 2170
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    check-cast p1, Landroid/view/View;

    #@d
    .line 2169
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->clearAccessibilityAction(Landroid/view/View;I)V

    #@10
    const/4 p1, 0x0

    #@11
    .line 2171
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    #@13
    return-void

    #@14
    .line 2174
    :cond_14
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@16
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@19
    iput-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->accessibilityDelegateViewRef:Ljava/lang/ref/WeakReference;

    #@1b
    .line 2175
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions(Landroid/view/View;I)V

    #@1e
    return-void
.end method

.method public setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "BottomSheetBehavior"

    #@2
    const-string v1, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    #@4
    .line 1239
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 1246
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@c
    if-eqz p1, :cond_13

    #@e
    .line 1248
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    :cond_13
    return-void
.end method

.method public setDraggable(Z)V
    .registers 2

    #@0
    .line 1157
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    #@2
    return-void
.end method

.method public setExpandedOffset(I)V
    .registers 3

    #@0
    if-ltz p1, :cond_b

    #@2
    .line 1063
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->expandedOffset:I

    #@4
    .line 1064
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@6
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(IZ)V

    #@a
    return-void

    #@b
    .line 1061
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string v0, "offset must be greater than or equal to 0"

    #@f
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw p1
.end method

.method public setFitToContents(Z)V
    .registers 3

    #@0
    .line 881
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 884
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@7
    .line 888
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 889
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateCollapsedOffset()V

    #@e
    .line 892
    :cond_e
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@10
    if-eqz p1, :cond_19

    #@12
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@14
    const/4 v0, 0x6

    #@15
    if-ne p1, v0, :cond_19

    #@17
    const/4 p1, 0x3

    #@18
    goto :goto_1b

    #@19
    :cond_19
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@1b
    :goto_1b
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    #@1e
    .line 894
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@20
    const/4 v0, 0x1

    #@21
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(IZ)V

    #@24
    .line 895
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    #@27
    return-void
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .registers 2

    #@0
    .line 1338
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottomIgnored:Z

    #@2
    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-lez v0, :cond_15

    #@5
    const/high16 v0, 0x3f800000    # 1.0f

    #@7
    cmpl-float v0, p1, v0

    #@9
    if-gez v0, :cond_15

    #@b
    .line 1030
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedRatio:F

    #@d
    .line 1033
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@f
    if-eqz p1, :cond_14

    #@11
    .line 1034
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculateHalfExpandedOffset()V

    #@14
    :cond_14
    return-void

    #@15
    .line 1028
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@17
    const-string v0, "ratio must be a float value between 0 and 1"

    #@19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw p1
.end method

.method public setHideFriction(F)V
    .registers 2

    #@0
    .line 1216
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideFriction:F

    #@2
    return-void
.end method

.method public setHideable(Z)V
    .registers 3

    #@0
    .line 1105
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@2
    if-eq v0, p1, :cond_14

    #@4
    .line 1106
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@6
    if-nez p1, :cond_11

    #@8
    .line 1107
    iget p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@a
    const/4 v0, 0x5

    #@b
    if-ne p1, v0, :cond_11

    #@d
    const/4 p1, 0x4

    #@e
    .line 1109
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    #@11
    .line 1111
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    #@14
    :cond_14
    return-void
.end method

.method public setHideableInternal(Z)V
    .registers 2

    #@0
    .line 1956
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@2
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    #@0
    .line 931
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxHeight:I

    #@2
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    #@0
    .line 908
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    #@2
    return-void
.end method

.method public setPeekHeight(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 954
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    #@4
    return-void
.end method

.method public final setPeekHeight(IZ)V
    .registers 6

    #@0
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    if-ne p1, v0, :cond_c

    #@5
    .line 970
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    #@7
    if-nez p1, :cond_15

    #@9
    .line 971
    iput-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    #@b
    goto :goto_1f

    #@c
    .line 974
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    #@e
    if-nez v0, :cond_17

    #@10
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    #@12
    if-eq v0, p1, :cond_15

    #@14
    goto :goto_17

    #@15
    :cond_15
    move v1, v2

    #@16
    goto :goto_1f

    #@17
    .line 975
    :cond_17
    :goto_17
    iput-boolean v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeightAuto:Z

    #@19
    .line 976
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    #@1c
    move-result p1

    #@1d
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->peekHeight:I

    #@1f
    :goto_1f
    if-eqz v1, :cond_24

    #@21
    .line 982
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V

    #@24
    :cond_24
    return-void
.end method

.method public setSaveFlags(I)V
    .registers 2

    #@0
    .line 1195
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->saveFlags:I

    #@2
    return-void
.end method

.method public setSignificantVelocityThreshold(I)V
    .registers 2

    #@0
    .line 1173
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->significantVelocityThreshold:I

    #@2
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .registers 2

    #@0
    .line 1134
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    #@2
    return-void
.end method

.method public setState(I)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_55

    #@3
    const/4 v1, 0x2

    #@4
    if-ne p1, v1, :cond_7

    #@6
    goto :goto_55

    #@7
    .line 1286
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@9
    if-nez v0, :cond_23

    #@b
    const/4 v0, 0x5

    #@c
    if-ne p1, v0, :cond_23

    #@e
    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    const-string v1, "Cannot set state: "

    #@12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    const-string v0, "BottomSheetBehavior"

    #@1f
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    return-void

    #@23
    :cond_23
    const/4 v0, 0x6

    #@24
    if-ne p1, v0, :cond_34

    #@26
    .line 1291
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    #@28
    if-eqz v0, :cond_34

    #@2a
    .line 1293
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getTopOffsetForState(I)I

    #@2d
    move-result v0

    #@2e
    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    #@30
    if-gt v0, v1, :cond_34

    #@32
    const/4 v0, 0x3

    #@33
    goto :goto_35

    #@34
    :cond_34
    move v0, p1

    #@35
    .line 1299
    :goto_35
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@37
    if-eqz v1, :cond_51

    #@39
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    if-nez v1, :cond_40

    #@3f
    goto :goto_51

    #@40
    .line 1303
    :cond_40
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@42
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@45
    move-result-object p1

    #@46
    check-cast p1, Landroid/view/View;

    #@48
    .line 1304
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;

    #@4a
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V

    #@4d
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    #@50
    goto :goto_54

    #@51
    .line 1301
    :cond_51
    :goto_51
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    #@54
    :goto_54
    return-void

    #@55
    .line 1281
    :cond_55
    :goto_55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@57
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    const-string v3, "STATE_"

    #@5b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5e
    if-ne p1, v0, :cond_63

    #@60
    const-string p1, "DRAGGING"

    #@62
    goto :goto_65

    #@63
    :cond_63
    const-string p1, "SETTLING"

    #@65
    .line 1283
    :goto_65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object p1

    #@69
    const-string v0, " should not be set externally."

    #@6b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object p1

    #@6f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object p1

    #@73
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@76
    throw v1
.end method

.method setStateInternal(I)V
    .registers 9

    #@0
    .line 1360
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 1363
    :cond_5
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@7
    const/4 v0, 0x5

    #@8
    const/4 v1, 0x6

    #@9
    const/4 v2, 0x3

    #@a
    const/4 v3, 0x4

    #@b
    if-eq p1, v3, :cond_17

    #@d
    if-eq p1, v2, :cond_17

    #@f
    if-eq p1, v1, :cond_17

    #@11
    .line 1364
    iget-boolean v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@13
    if-eqz v4, :cond_19

    #@15
    if-ne p1, v0, :cond_19

    #@17
    .line 1368
    :cond_17
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->lastStableState:I

    #@19
    .line 1371
    :cond_19
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@1b
    if-nez v4, :cond_1e

    #@1d
    return-void

    #@1e
    .line 1375
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroid/view/View;

    #@24
    if-nez v4, :cond_27

    #@26
    return-void

    #@27
    :cond_27
    const/4 v5, 0x0

    #@28
    const/4 v6, 0x1

    #@29
    if-ne p1, v2, :cond_2f

    #@2b
    .line 1381
    invoke-direct {p0, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    #@2e
    goto :goto_38

    #@2f
    :cond_2f
    if-eq p1, v1, :cond_35

    #@31
    if-eq p1, v0, :cond_35

    #@33
    if-ne p1, v3, :cond_38

    #@35
    .line 1383
    :cond_35
    invoke-direct {p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    #@38
    .line 1386
    :cond_38
    :goto_38
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateDrawableForTargetState(IZ)V

    #@3b
    .line 1387
    :goto_3b
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v0

    #@41
    if-ge v5, v0, :cond_51

    #@43
    .line 1388
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    #@4b
    invoke-virtual {v0, v4, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    #@4e
    add-int/lit8 v5, v5, 0x1

    #@50
    goto :goto_3b

    #@51
    .line 1390
    :cond_51
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateAccessibilityActions()V

    #@54
    return-void
.end method

.method public setUpdateImportantForAccessibilityOnSiblings(Z)V
    .registers 2

    #@0
    .line 2109
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    #@2
    return-void
.end method

.method public shouldExpandOnUpwardDrag(JF)Z
    .registers 4

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method shouldHide(Landroid/view/View;F)Z
    .registers 7

    #@0
    .line 1489
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_6

    #@5
    return v1

    #@6
    .line 1492
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideableWhenDragging()Z

    #@9
    move-result v0

    #@a
    const/4 v2, 0x0

    #@b
    if-nez v0, :cond_e

    #@d
    return v2

    #@e
    .line 1495
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@11
    move-result v0

    #@12
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@14
    if-ge v0, v3, :cond_17

    #@16
    return v2

    #@17
    .line 1499
    :cond_17
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->calculatePeekHeight()I

    #@1a
    move-result v0

    #@1b
    .line 1500
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@1e
    move-result p1

    #@1f
    int-to-float p1, p1

    #@20
    iget v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideFriction:F

    #@22
    mul-float/2addr p2, v3

    #@23
    add-float/2addr p1, p2

    #@24
    .line 1501
    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@26
    int-to-float p2, p2

    #@27
    sub-float/2addr p1, p2

    #@28
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@2b
    move-result p1

    #@2c
    int-to-float p2, v0

    #@2d
    div-float/2addr p1, p2

    #@2e
    const/high16 p2, 0x3f000000    # 0.5f

    #@30
    cmpl-float p1, p1, p2

    #@32
    if-lez p1, :cond_35

    #@34
    goto :goto_36

    #@35
    :cond_35
    move v1, v2

    #@36
    :goto_36
    return v1
.end method

.method public shouldSkipHalfExpandedStateWhenDragging()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public shouldSkipSmoothAnimation()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
